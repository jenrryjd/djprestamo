# coding=utf-8

from django.contrib.auth.decorators import login_required
from django.contrib.auth.models import Group
from django.db import transaction
from django.db.models.query_utils import Q
from django.http import HttpResponseRedirect
from django.shortcuts import render
from django.utils.timezone import now

from jdsistemas.commonviews import adduserdata
from jdsistemas.decorators import secure_module, last_access
from jdsistemas.forms import AdministrativosForm, GrupoUsuarioForm, ClienteForm
from jdsistemas.funciones import url_back, MiPaginador, bad_json, validarcedula, remover_tildes, generar_usuario, \
    ok_json, log, resetear_clave
from jdsistemas.models import Administrativo, Persona, Nacionalidad, Cliente
from jdsistemas.settings import PAIS_ECUADOR_ID, CLIENTE_GROUP_ID


@login_required(login_url='/login')
@secure_module
@last_access
@transaction.atomic()
def view(request):
    global ex
    data = {}
    adduserdata(request, data)
    persona = request.session['persona']
    if request.method == 'POST':
        action = request.POST['action']

        if action == 'add':
            try:
                form = ClienteForm(request.POST)
                if form.is_valid():
                    cedula = form.cleaned_data['numeroidentificacion'].strip()
                    tipodoc = form.cleaned_data['tipodocumento']
                    if tipodoc.id == 1:
                        if validarcedula(cedula) != 'Ok':
                            return bad_json(mensaje=u"El número de cedula ingresado esta incorrecto.")
                    if not cedula:
                        return bad_json(mensaje=u"Debe ingresar un numero de identificación.")

                    if cedula:
                        if Cliente.objects.filter(numeroidentificacion=cedula).exists():
                            return bad_json(mensaje=u"Ya existe un cliente con este numero de indentificación.")

                    cliente = Cliente(tipodocumento=(form.cleaned_data['tipodocumento']),
                                      numeroidentificacion=remover_tildes(form.cleaned_data['numeroidentificacion']).upper(),
                                      nombres=remover_tildes(form.cleaned_data['nombres']).upper(),
                                      apellidos=remover_tildes(form.cleaned_data['apellidos']).upper(),
                                      nombrecomercial=remover_tildes(form.cleaned_data['nombrecomercial']).upper(),
                                      direccion=form.cleaned_data['direccion'].upper(),
                                      email=form.cleaned_data['email'],
                                      telefono=form.cleaned_data['telefono'])
                    cliente.save(request)
                    log(u'Adiciono un cliente: %s' % cliente, request, "add")
                    return ok_json()
                else:
                    return bad_json(error=6)
            except Exception as ex:
                transaction.set_rollback(True)
                return bad_json(error=1)

        if action == 'edit':
            try:
                administrativo = Administrativo.objects.get(pk=request.POST['id'])
                personaadmin = administrativo.persona
                form = AdministrativosForm(request.POST)
                if form.is_valid():
                    cedula = remover_tildes(form.cleaned_data['cedula'].strip())
                    if not cedula:
                        return bad_json(mensaje=u"Debe ingresar una identificación.")
                    if cedula:
                        if Persona.objects.filter(cedula=cedula).exclude(id=personaadmin.id).exists():
                            return bad_json(mensaje=u"Existe una persona registrada con esta identificación.")

                    personaadmin.nombre1 = remover_tildes(form.cleaned_data['nombre1']).upper()
                    personaadmin.nombre2 = remover_tildes(form.cleaned_data['nombre2']).upper()
                    personaadmin.apellido1 = remover_tildes(form.cleaned_data['apellido1']).upper()
                    personaadmin.apellido2 = remover_tildes(form.cleaned_data['apellido2']).upper()
                    personaadmin.cedula = remover_tildes(form.cleaned_data['cedula'])
                    personaadmin.nacimiento = form.cleaned_data['nacimiento']
                    personaadmin.sexo = form.cleaned_data['sexo']
                    personaadmin.nacionalidad = form.cleaned_data['nacionalidad']
                    personaadmin.pais = form.cleaned_data['pais']
                    personaadmin.provincia = form.cleaned_data['provincia']
                    personaadmin.canton = form.cleaned_data['canton']
                    personaadmin.parroquia = form.cleaned_data['parroquia']
                    personaadmin.sector = remover_tildes(form.cleaned_data['sector']).upper()
                    personaadmin.direccion = remover_tildes(form.cleaned_data['direccion']).upper()
                    personaadmin.telefono = remover_tildes(form.cleaned_data['telefono'])
                    personaadmin.email = form.cleaned_data['email']
                    personaadmin.save()
                    log(u'Modifico administrativo: %s' % personaadmin, request, "edit")
                    return ok_json()
                else:
                    return bad_json(error=6)
            except Exception as ex:
                transaction.set_rollback(True)
                return bad_json(error=1)

        if action == 'resetear':
            try:
                administrativo = Administrativo.objects.get(pk=request.POST['id'])
                resetear_clave(administrativo.persona)
                administrativo.persona.cambiar_clave()
                log(u'Reseteo clave de usuario: %s' % administrativo, request, "edit")
                return ok_json()
            except Exception as ex:
                transaction.set_rollback(True)
                return bad_json(error=1)

        if action == 'activar':
            try:
                administrativo = Administrativo.objects.get(pk=request.POST['id'])
                usuario = administrativo.persona.usuario
                usuario.is_active = True
                usuario.save()
                log(u'Activo usuario: %s' % administrativo, request, "edit")
                return ok_json()
            except Exception as ex:
                transaction.set_rollback(True)
                return bad_json(error=1)

        if action == 'activarperfil':
            try:
                administrativo = Administrativo.objects.get(pk=request.POST['id'])
                administrativo.activo = True
                administrativo.save()
                log(u'Activo perfil de usuario: %s' % administrativo, request, "edit")
                return ok_json()
            except Exception as ex:
                transaction.set_rollback(True)
                return bad_json(error=1)

        if action == 'desactivar':
            try:
                administrativo = Administrativo.objects.get(pk=request.POST['id'])
                ui = administrativo.persona.usuario
                ui.is_active = False
                ui.save()
                log(u'Desactivo usuario: %s' % administrativo, request, "edit")
                return ok_json()
            except Exception as ex:
                transaction.set_rollback(True)
                return bad_json(error=1)

        if action == 'desactivarperfil':
            try:
                administrativo = Administrativo.objects.get(pk=request.POST['id'])
                administrativo.activo = False
                administrativo.save()
                log(u'Desactivo perfil de usuario: %s' % administrativo, request, "edit")
                return ok_json()
            except Exception as ex:
                transaction.set_rollback(True)
                return bad_json(error=1)

        if action == 'addgrupo':
            try:
                administrativo = Administrativo.objects.get(pk=request.POST['id'])
                form = GrupoUsuarioForm(request.POST)
                if form.is_valid():
                    grupo = form.cleaned_data['grupo']
                    grupo.user_set.add(administrativo.persona.usuario)
                    grupo.save()
                    log(u'Adiciono grupo de usuarios: %s' % grupo, request, "add")
                    return ok_json()
                else:
                    return bad_json(error=6)
            except Exception as ex:
                transaction.set_rollback(True)
                return bad_json(error=1)

        if action == 'delgrupo':
            try:
                administrativo = Administrativo.objects.get(pk=request.POST['id'])
                grupo = Group.objects.get(pk=request.POST['idg'])
                if administrativo.persona.usuario.groups.count() <= 1:
                    return bad_json(mensaje=u"El usuario debe de pertenecer a un grupo.")
                grupo.user_set.remove(administrativo.persona.usuario)
                grupo.save()
                log(u'Elimino de grupo de usuarios: %s' % grupo, request, "del")
                return ok_json()
            except Exception as ex:
                transaction.set_rollback(True)
                return bad_json(error=1)

        return bad_json(error=0)
    else:
        if 'action' in request.GET:
            action = request.GET['action']

            if action == 'add':
                try:
                    data['title'] = u'Adicionar cliente'
                    form = ClienteForm(screenwidth=int(request.session['screenwidth']), modal=data['modalform'])
                    data['form'] = form
                    return render(request, "adm_cliente/add.html", data)
                except Exception as ex:
                    pass

            if action == 'desactivar':
                try:
                    data['title'] = u'Desactivar usuario'
                    data['administrativo'] = Administrativo.objects.get(pk=request.GET['id'])
                    return render(request, "adm_cliente/desactivar.html", data)
                except Exception as ex:
                    pass

            if action == 'desactivarperfil':
                try:
                    data['title'] = u'Desactivar perfil de usuario'
                    data['administrativo'] = Administrativo.objects.get(pk=request.GET['id'])
                    return render(request, "adm_cliente/desactivarperfil.html", data)
                except Exception as ex:
                    pass

            if action == 'activar':
                try:
                    data['title'] = u'Activar usuario'
                    data['administrativo'] = Administrativo.objects.get(pk=request.GET['id'])
                    return render(request, "adm_cliente/activar.html", data)
                except Exception as ex:
                    pass

            if action == 'activarperfil':
                try:
                    data['title'] = u'Activar perfil de usuario'
                    data['administrativo'] = Administrativo.objects.get(pk=request.GET['id'])
                    return render(request, "adm_cliente/activarperfil.html", data)
                except Exception as ex:
                    pass

            if action == 'edit':
                try:
                    data['title'] = u'Editar personal administrativo'
                    data['administrativo'] = administrativo = Administrativo.objects.get(pk=request.GET['id'])
                    personaadmin = administrativo.persona
                    # perfil = personaadmin.mi_perfil()
                    form = AdministrativosForm(initial={'nombre1': personaadmin.nombre1,
                                                        'nombre2': personaadmin.nombre2,
                                                        'apellido1': personaadmin.apellido1,
                                                        'apellido2': personaadmin.apellido2,
                                                        'cedula': personaadmin.cedula,
                                                        'nacionalidad': personaadmin.nacionalidad,
                                                        'nacimiento': personaadmin.nacimiento,
                                                        'sexo': personaadmin.sexo,
                                                        'pais': personaadmin.pais,
                                                        'provincia': personaadmin.provincia,
                                                        'canton': personaadmin.canton,
                                                        'parroquia': personaadmin.parroquia,
                                                        'sector': personaadmin.sector,
                                                        'direccion': personaadmin.direccion,
                                                        'telefono': personaadmin.telefono,
                                                        'email': personaadmin.email},
                                               screenwidth=int(request.session['screenwidth']), modal=data['modalform'])
                    form.editar(administrativo)
                    data['form'] = form
                    data['pais_ecuador_id'] = PAIS_ECUADOR_ID
                    return render(request, "adm_cliente/edit.html", data)
                except Exception as ex:
                    pass

            if action == 'addgrupo':
                try:
                    data['title'] = u'Adicionar grupo'
                    data['administrativo'] = Administrativo.objects.get(pk=request.GET['id'])
                    form = GrupoUsuarioForm(screenwidth=int(request.session['screenwidth']), modal=data['modalform'])
                    form.grupos(Group.objects.all().order_by('name'))
                    data['form'] = form
                    return render(request, "adm_cliente/addgrupo.html", data)
                except Exception as ex:
                    pass

            if action == 'resetear':
                try:
                    data['title'] = u'Resetear clave del usuario'
                    data['administrativo'] = Administrativo.objects.get(pk=request.GET['id'])
                    return render(request, "adm_cliente/resetear.html", data)
                except Exception as ex:
                    pass

            if action == 'delgrupo':
                try:
                    data['title'] = u'Eliminar de grupo'
                    data['administrativo'] = Administrativo.objects.get(pk=request.GET['id'])
                    data['grupo'] = Group.objects.get(pk=request.GET['idg'])
                    return render(request, "adm_cliente/delgrupo.html", data)
                except Exception as ex:
                    pass

            return url_back(request, ex=ex if 'ex' in locals() else None)
        else:
            try:
                data['title'] = u'Listado de Clientes'
                search = None
                ids = None
                if 's' in request.GET:
                    search = request.GET['s'].strip()
                    clientes = Cliente.objects.filter(Q(nombres__icontains=search) |
                                                      Q(apellidos__icontains=search) |
                                                      Q(numeroidentificacion__icontains=search)).distinct()

                elif 'id' in request.GET:
                    ids = request.GET['id']
                    clientes = Cliente.objects.filter(id=ids).distinct()
                else:
                    clientes = Cliente.objects.all()
                paging = MiPaginador(clientes, 25)
                p = 1
                try:
                    paginasesion = 1
                    if 'paginador' in request.session and 'paginador_url' in request.session:
                        if request.session['paginador_url'] == 'adm_cliente':
                            paginasesion = int(request.session['paginador'])
                    if 'page' in request.GET:
                        p = int(request.GET['page'])
                    else:
                        p = paginasesion
                    page = paging.page(p)
                except:
                    p = 1
                    page = paging.page(p)
                request.session['paginador'] = p
                request.session['paginador_url'] = 'adm_cliente'
                data['paging'] = paging
                data['rangospaging'] = paging.rangos_paginado(p)
                data['page'] = page
                data['search'] = search if search else ""
                data['ids'] = ids if ids else ""
                data['clientes'] = page.object_list
                # data['grupo_docentes'] = PROFESORES_GROUP_ID
                # data['grupo_empleadores'] = EMPLEADORES_GRUPO_ID
                # data['grupo_administrativo'] = adm_cliente_GROUP_ID
                # data['grupo_estudiantes'] = ALUMNOS_GROUP_ID
                return render(request, "adm_cliente/view.html", data)
            except Exception as ex:
                return HttpResponseRedirect('/')
