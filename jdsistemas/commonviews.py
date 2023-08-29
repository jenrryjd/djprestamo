# coding=latin-1
import json
import random
from datetime import datetime

from django.contrib.auth import authenticate, logout, login
from django.contrib.auth.decorators import login_required
from django.contrib.auth.models import User
from django.db import transaction
from django.http import HttpResponseRedirect
from django.shortcuts import render
from django.utils import timezone
from django.views.decorators.csrf import csrf_exempt

from jdsistemas.decorators import secure_module, last_access
from jdsistemas.forms import CambioClaveForm, CambioClaveSimpleForm
from jdsistemas.funciones import bad_json, ok_json, log
from jdsistemas.models import Persona, Modulo, GruposModulos, Reporte, PerfilUsuario
from jdsistemas.settings import DOCTOR_GROUP_ID, PACIENTE_GROUP_ID


def get_client_ip(request):
    x_forwarded_for = request.META.get('HTTP_X_FORWARDED_FOR')
    if x_forwarded_for:
        ip = x_forwarded_for.split(',')[0]
    else:
        ip = request.META.get('REMOTE_ADDR')
    return ip


# AUTENTIFICA EL USUARIO
@transaction.atomic()
@csrf_exempt
def login_user(request):
    global ex
    if request.method == 'POST':

        if 'action' in request.POST:
            action = request.POST['action']

            if action == 'login':
                try:
                    client_address = get_client_ip(request)
                    browser = request.POST['navegador']
                    os = request.POST['os']
                    screensize = request.POST['screensize']
                    user = authenticate(request, username=request.POST['user'], password=request.POST['pass'])
                    if user is not None:
                        if not user.is_active:
                            return bad_json(mensaje=u'Login fallido, usuario no activo.')
                        else:
                            if Persona.objects.filter(usuario=user).exists():
                                persona = Persona.objects.filter(usuario=user)[0]
                                perfilprincipal = persona.perfilusuario_principal()
                                if perfilprincipal:
                                    login(request, user)
                                    log(u'Login con exito: %s - %s - %s - %s' % (persona, browser, os, client_address), request, "add")
                                    request.session['persona'] = persona.id
                                    request.session['perfilprincipal'] = perfilprincipal.id
                                    if perfilprincipal.es_doctor():
                                        doctor = perfilprincipal.doctor
                                    if perfilprincipal.es_paciente():
                                        perfilprincipal.establecer_paciente_principal()
                                    return ok_json({"sessionid": request.session.session_key})
                                else:
                                    return bad_json(mensaje=u'Login fallido, no existen perfiles activos.')
                            else:
                                log(u'Login fallido, no existe el usuario: %s' % request.POST['user'], request, "add")
                                return bad_json(mensaje=u'Login fallido, no existe el usuario.')

                        return ok_json({"sessionid": request.session.session_key})

                    return bad_json(mensaje=u'Usuario o contraseña incorrectos.')
                except Exception as ex:
                    transaction.set_rollback(True)
                    return bad_json(mensaje=u'Login fallido, Error en el sistema.')

            # if action == 'cambioclave':
            #     try:
            #         form = CambioClaveForm(request.POST)
            #         if form.is_valid():
            #             persona = request.session['persona']
            #             usuario = persona.usuario
            #             if form.cleaned_data['nueva'] == form.cleaned_data['anterior']:
            #                 return bad_json(mensaje=u"No puede volver a utilizar su clave anterior, por favor Ingrese otra.")
            #             if not usuario.check_password(form.cleaned_data['anterior']):
            #                 return bad_json(mensaje=u"Clave anterior no coincide.")
            #             usuario.set_password(form.cleaned_data['nueva'])
            #             usuario.save()
            #             persona.clave_cambiada()
            #             return ok_json()
            #         else:
            #             return bad_json(error=6)
            #     except Exception as ex:
            #         transaction.rollback()
            #         return bad_json(mensaje=u"No puedo cambiar la clave.")

        return bad_json(error=0)
    else:

        if 'persona' in request.session:
            True
            try:
                data = {}
                adduserdata(request, data)
                data['title'] = u'Cambio de clave'
                # data['form'] = CambioClaveForm()
                persona = data['persona']
                # data['cambio_clave_obligatorio'] = persona.necesita_cambiar_clave()
                # return render_to_response("changepass.html", data, context_instance=RequestContext(request))
            except Exception as ex:
                return HttpResponseRedirect("/")
        data = {"title": u"Login", "background": random.randint(1, 6)}
        data['request'] = request
        hoy = datetime.now().date()
        # data['noticias'] = Noticia.objects.filter(desde__lte=hoy, hasta__gte=hoy, imagen__isnull=True, tipo__in=[1, 2], estado=2).order_by('-desde', 'id')[0:5]
        # data['noticiasgraficas'] = Noticia.objects.filter(desde__lte=hoy, hasta__gte=hoy, imagen__isnull=False, tipo__in=[1, 2], estado=2).order_by('-desde', 'id')[:1]
        data['currenttime'] = datetime.now()
        # data['institucion'] = mi_institucion().nombre
        # data['contacto_email'] = CONTACTO_EMAIL
        # data['url_aplicacion_estudiante_android'] = URL_APLICACION_ESTUDIANTE_ANDROID
        # data['url_aplicacion_estudiante_ios'] = URL_APLICACION_ESTUDIANTE_IOS
        # data['url_aplicacion_estudiante_windows'] = URL_APLICACION_ESTUDIANTE_WINDOWS
        request.session['alertanoticias'] = True
        return render(request, 'login.html', data)


# CIERRA LA SESSION DEL USUARIO
@csrf_exempt
def logout_user(request):
    global ex
    if request.method == 'POST':
        try:
            logout(request)
            return ok_json()
        except:
            return bad_json(error=1)
    else:
        logout(request)
        return HttpResponseRedirect("/")

# CAMBIO DE USUARIO
@login_required(login_url='/login')
@transaction.atomic()
@csrf_exempt
def changeuser(request):
    try:
        if request.method == 'POST':
            try:
                global ex
                data = {}
                adduserdata(request, data)
                persona = data['persona']
                if not persona.usuario.is_superuser:
                    return bad_json(error=4)
                user = User.objects.get(pk=request.POST['id'])
                if not user.is_active:
                    return bad_json(mensaje=u'El usuario se encuenta desactivado.')
                user.backend = 'django.contrib.auth.backends.ModelBackend'
                log(u'%s - entro como este usuario: %s' % (persona, str(user)), request, "add")
                logout(request)
                login(request, user)
                persona = Persona.objects.get(usuario__id=user.id)
                request.session['persona'] = persona.id
                # request.session['persona'] = persona = Persona.objects.get(usuario__id=user.id)
                request.session['alertanoticias'] = False
                # request.session['perfiles'] = persona.mis_perfilesusuarios()
                # request.session['perfilprincipal'] = perfilprincipal = persona.perfilusuario_principal()
                # request.session['coordinaciones'] = coordinaciones = persona.lista_coordinaciones()
                # request.session['coordinacionseleccionada'] = coordinacion = coordinaciones[0] if coordinaciones else None
                # request.session['carreras'] = carreras = persona.lista_carreras_coordinacion(coordinacion) if coordinacion else None
                # request.session['carreraseleccionada'] = carreras[0] if carreras else None
                request.session['ruta'] = [['/', 'Inicio']]
                if 'url_obligatoria' in request.session:
                    del request.session['url_obligatoria']
                return ok_json({"sessionid": request.session.session_key})
            except Exception as ex:
                transaction.rollback()
                return bad_json()
        else:
            return HttpResponseRedirect('/')
    except Exception as ex:
        pass


# ADICIONA LOS DATOS DEL USUARIO A LA SESSION
def adduserdata(request, data):
    # ADICIONA EL USUARIO A LA SESSION

    if 'persona' not in request.session:
        if not request.user.is_authenticated:
            raise Exception('Usuario no autentificado en el sistema')
        request.session['persona'] = Persona.objects.get(usuario=request.user)
    else:
        request.session['persona'] = Persona.objects.get(pk=request.session['persona']).id
    data['persona'] = Persona.objects.get(pk=request.session['persona'])
    data['session_key'] = request.session.session_key
    data['check_session'] = True
    persona = data['persona']
    # request.session['ultimo_acceso'] = datetime.now()
    if request.method == 'GET':
        if 'screenwidth' in request.GET:
            request.session['screenwidth'] = request.GET['screenwidth']
        else:
            if 'screenwidth' not in request.session:
                request.session['screenwidth'] = 800
        data['screenwidth'] = request.session['screenwidth']
        if 'modal' in request.GET:
            data['modalform'] = int(request.GET['modal'])
        else:
            data['modalform'] = 0
        if 'ret' in request.GET:
            data['ret'] = request.GET['ret']
        if 'mensj' in request.GET:
            data['mensj'] = request.GET['info']
        if 'info' in request.GET:
            data['info'] = request.GET['info']
    else:
        if 'screenwidth' in request.POST:
            request.session['screenwidth'] = request.POST['screenwidth']
        else:
            if 'screenwidth' not in request.session:
                request.session['screenwidth'] = 800
    data['currenttime'] = datetime.now()
    data['sessionclientid'] = request.session.session_key

    # if 'info' in request.session:
    #     data['info'] = request.session['info']
    #     del request.session['info']
    if 'perfilprincipal' not in request.session:
        request.session['perfilprincipal'] = persona.perfilusuario_principal()
    else:
        request.session['perfilprincipal'] = idperfil=PerfilUsuario.objects.get(pk=request.session['perfilprincipal']).id
    perfilprincipal = PerfilUsuario.objects.get(pk=request.session['perfilprincipal'])
    # if 'grupos_usuarios' not in request.session:
    #     if perfilprincipal.es_doctor():
    #         request.session['grupos_usuarios'] = request.user.groups.filter(id=DOCTOR_GROUP_ID)
    #     elif perfilprincipal.es_paciente():
    #         request.session['grupos_usuarios'] = request.user.groups.filter(id=PACIENTE_GROUP_ID)
    #     else:
    #         request.session['grupos_usuarios'] = request.user.groups.exclude(id__in=[DOCTOR_GROUP_ID, PACIENTE_GROUP_ID])
    # data['grupos_usuarios'] = request.session['grupos_usuarios']


    if 'ruta' not in request.session:
        request.session['ruta'] = [['/', 'Inicio']]
    rutalista = request.session['ruta']
    if request.path:
        if Modulo.objects.filter(url=request.path[1:]).exists():
            modulo = Modulo.objects.filter(url=request.path[1:])[0]
            url = ['/' + modulo.url, modulo.nombre]
            if rutalista.count(url) <= 0:
                if rutalista.__len__() >= 8:
                    b = rutalista[1]
                    rutalista.remove(b)
                    rutalista.append(url)
                else:
                    rutalista.append(url)
            request.session['ruta'] = rutalista
    data["ruta"] = rutalista
    data['permite_modificar'] = True


# PANEL PRINCIPAL DEL SISTEMA

@login_required(login_url='/login')
@secure_module
@last_access
@transaction.atomic()
def panel(request):
    global ex
    data = {}
    adduserdata(request, data)
    persona = Persona.objects.get(pk=request.session['persona'])
    if request.method == 'POST':
        if 'action' in request.POST:
            action = request.POST['action']

            # if action == 'eliminarreservalibro':
            #     try:
            #         reserva = ReservaDocumento.objects.get(pk=request.POST['id'])
            #         reserva.anulado = True
            #         reserva.save(request)
            #         return ok_json()
            #     except Exception as ex:
            #         return bad_json(error=1)

        return bad_json(error=0)
    else:
        try:
            data['title'] = u'JD Sistemas'
            hoy = datetime.now()
            # ESTUDIANTES
            perfilprincipal = PerfilUsuario.objects.get(pk=request.session['perfilprincipal'])

            if 'paginador' in request.session:
                del request.session['paginador']
            if perfilprincipal.es_doctor():
                True
                # data['inscripcion'] = inscripcion = perfilprincipal.inscripcion
                # data['reporte_0'] = obtener_reporte('ficha_preinscripcion')
                # data['imprimirficha'] = (datetime(inscripcion.fecha.year, inscripcion.fecha.month, inscripcion.fecha.day, 0, 0, 0) + timedelta(days=30)).date() > datetime.now().date()
                # data['ofertasdisponibles'] = inscripcion.tiene_ofertas_disponibles()
                # data['entrevistaspendientes'] = inscripcion.tiene_entrevistas_pendientes()
                # data['proceso'] = None
                # data['es_profesor'] = False
                # data['necesita_evaluarse'] = False
                # data['incidencias'] = []
                # misgrupos = GruposModulos.objects.filter(grupo__id=DOCTOR_GROUP_ID).distinct()
                # data['mismodulos'] = Modulo.objects.filter(gruposmodulos__in=misgrupos, activo=True).distinct().order_by('nombre')
                # grupos = persona.usuario.groups.filter(id__in=[PACIENTE_GROUP_ID])
                #
                # if 'url_obligatoria' in request.session:
                #     if 'alu_datosintegradores' == request.session['url_obligatoria']:
                #         del request.session['url_obligatoria']

            # elif perfilprincipal.es_profesor():
            #     misgrupos = GruposModulos.objects.filter(grupo__id=PROFESORES_GROUP_ID).distinct()
            #     data['mismodulos'] = Modulo.objects.filter(gruposmodulos__in=misgrupos, activo=True).distinct().order_by('nombre')
            #     grupos = persona.usuario.groups.filter(id__in=[PROFESORES_GROUP_ID])
            #     profesor = perfilprincipal.profesor
            #     data['es_profesor'] = True
            #     data['necesita_evaluarse'] = False
            #     data['proceso'] = proceso = periodo.proceso_evaluativo()
            #     data['materias_sin_planificacion'] = Materia.objects.filter(Q(planificacionmateria__isnull=True) | Q(planificacionmateria__aprobado=False), profesormateria__profesor=profesor, profesormateria__principal=True, cerrado=False).exists()
            #     data['solicitud_tutorias'] = SolicitudTutoria.objects.filter(materia__profesormateria__profesor=profesor, materia__profesormateria__principal=True, pendiente=True, materia__cerrado=False).exists()
            #     data['solicitud_notas'] = Materia.objects.filter(solicitudingresonotasatraso__fechalimite__gte=datetime.now().date(), profesormateria__profesor=profesor, profesormateria__principal=True, solicitudingresonotasatraso__estado=2).distinct()
            #     if DATOS_INTEGRADORES:
            #         periodoactualizaciondatos = periodo_actualizacion_datos(2)
            #         if periodoactualizaciondatos and not periodoactualizaciondatos.completo_datos_profesor(profesor):
            #             request.session['url_obligatoria'] = 'adm_datosintegradores'
            #         else:
            #             if 'url_obligatoria' in request.session:
            #                 if 'adm_datosintegradores' == request.session['url_obligatoria']:
            #                     del request.session['url_obligatoria']
            #     # if proceso.instrumentoautoactivo and proceso.instrumentoautoinicio <= hoy.date() and proceso.instrumentoautofin >=hoy.date() and not profesor.dato_autoevaluado_periodo_acreditacion(periodo,perfilprincipal.profesor.coordinacion.sede):
            #     #     data['necesita_evaluarse'] = True
            #     # NOTICIAS Y AVISOS DEL DIA
            #     data['tutorias'] = TutorPreproyecto.objects.filter(profesor=profesor, activo=True, preproyecto__proyectogrado__estado__in=[1, 2, 4]).exists()
            #     data['noticias'] = Noticia.objects.filter(desde__lte=hoy, hasta__gte=hoy, imagen=None, tipo__in=[1, 2, 5], estado=2).order_by('-desde', 'id')[0:5]
            #     data['noticiasgraficas'] = Noticia.objects.filter(desde__lte=hoy, hasta__gte=hoy, imagen__isnull=False, tipo__in=[1, 2, 5], estado=2).order_by('-desde', 'id')[:1]
            #     encuestas = encuesta(grupos, persona)
            #     if encuestas:
            #         return HttpResponseRedirect('/com_responderencuestas?action=responder&id=' + str(encuestas[0].id))
            else:
                misgrupos = GruposModulos.objects.filter(grupo__in=persona.usuario.groups.exclude(
                    id__in=[PACIENTE_GROUP_ID, DOCTOR_GROUP_ID])).distinct()
                data['mismodulos'] = Modulo.objects.filter(gruposmodulos__in=misgrupos,
                                                           activo=True).distinct().order_by('nombre')
                grupos = persona.usuario.groups.exclude(id__in=[PACIENTE_GROUP_ID, DOCTOR_GROUP_ID])


            if 'url_obligatoria' in request.session:
                return HttpResponseRedirect(request.session['url_obligatoria'])
            data['grupos'] = misgrupos
            # LISTADO DE ESTUDIANTES Y PROFESORES QUE ESTAN DE CUMPLEAÑOS
            # data['ins_cumple'] = Inscripcion.objects.filter(persona__nacimiento__day=hoy.day, persona__nacimiento__month=hoy.month, matricula__nivel__fin__gte=hoy).distinct()

            # MODULO DE BIBLIOTECA
            if 'info' in request.GET:
                data['info'] = request.GET['info']
            # data['alertanoticias'] = request.session['alertanoticias']

            request.session['alertanoticias'] = True

            return render(request, "panel.html", data)
        except Exception as ex:
            return HttpResponseRedirect('/logout')

# CAMBIO CLAVES
@login_required(login_url='/login')
@last_access
@transaction.atomic()
def passwd(request):
    global ex
    if request.method == 'POST':
        if 'action' in request.POST:
            action = request.POST['action']

            if action == 'changepass':
                try:
                    form = CambioClaveForm(request.POST)
                    if form.is_valid():
                        persona =Persona.objects.get(pk=request.session['persona'])
                        usuario = persona.usuario
                        if form.cleaned_data['nueva'] == form.cleaned_data['anterior']:
                            return bad_json(mensaje=u"No puede volver a utilizar su clave anterior, por favor ingrese otra.")
                        if not usuario.check_password(form.cleaned_data['anterior']):
                            return bad_json(mensaje=u"Clave anterior no coincide.")
                        usuario.set_password(form.cleaned_data['nueva'])
                        usuario.save()
                        persona.clave_cambiada()
                        return ok_json()
                    else:
                        return bad_json(error=6)
                except Exception as ex:
                    transaction.rollback()
                    return bad_json(mensaje=u"No puedo cambiar la clave.")

        return bad_json(error=0)
    else:
        try:
            data = {}
            adduserdata(request, data)
            data['title'] = u'Cambio de clave'
            if 'modal' not in request.GET:
                form = CambioClaveSimpleForm(screenwidth=int(request.session['screenwidth']), modal=data['modalform'])
            else:
                form = CambioClaveForm(screenwidth=int(request.session['screenwidth']), modal=data['modalform'])
            data['form'] = form
            persona = data['persona']
            data['cambio_clave_obligatorio'] = persona.necesita_cambiar_clave()
            return render(request,"changepass.html", data)
        except Exception as ex:
            return HttpResponseRedirect('/')

def obtener_reporte(nombre):
    return Reporte.objects.filter(nombre=nombre)[0] if Reporte.objects.filter(nombre=nombre).exists() else None


