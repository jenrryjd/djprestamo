# coding=utf-8
import json
from datetime import datetime
from django.contrib.auth.decorators import login_required
from django.contrib.auth.models import Group, Permission
from django.db import transaction
from django.http import HttpResponseRedirect
from django.shortcuts import render
from jdsistemas.commonviews import adduserdata
from jdsistemas.decorators import last_access, secure_module
from jdsistemas.forms import GrupoSistemaForm
from jdsistemas.funciones import log, bad_json, ok_json, url_back, generar_nombre
from jdsistemas.models import null_to_text, mi_institucion, Modulo, GruposModulos, Reporte


@login_required(login_url='/login')
@secure_module
@last_access
@transaction.atomic()
def view(request):
    global ex
    data = {}
    adduserdata(request, data)
    data['institucion'] = institucion = mi_institucion()
    if request.method == 'POST':
        if 'action' in request.POST:
            action = request.POST['action']

            if action == 'addgrupo':
                try:
                    form = GrupoSistemaForm(request.POST)
                    if form.is_valid():
                        grupo = Group(name=null_to_text(form.cleaned_data['nombre']))
                        grupo.save()
                        log(u'Adiciono grupo: %s' % grupo, request, "add")
                        return ok_json()
                    else:
                        return bad_json(error=6)
                except Exception as ex:
                    transaction.set_rollback(True)
                    return bad_json(error=1)

            if action == 'editgrupo':
                try:
                    form = GrupoSistemaForm(request.POST)
                    if form.is_valid():
                        grupo = Group.objects.get(pk=request.POST['id'])
                        grupo.name = null_to_text(form.cleaned_data['nombre'])
                        grupo.save()
                        log(u'Modifico grupo: %s' % grupo, request, "edit")
                        return ok_json()
                    else:
                        return bad_json(error=6)
                except Exception as ex:
                    transaction.set_rollback(True)
                    return bad_json(error=1)

            if action == 'delgrupo':
                try:
                    grupo = Group.objects.get(pk=request.POST['id'])
                    log(u'Elimino grupo: %s' % grupo, request, "del")
                    grupo.delete()
                    return ok_json()
                except Exception as ex:
                    transaction.set_rollback(True)
                    return bad_json(error=2)

            if action == 'addpermisogrupo':
                try:
                    grupo = Group.objects.get(pk=int(request.POST['id']))
                    datos = json.loads(request.POST['lista'])
                    for dato in datos:
                        permiso = Permission.objects.get(pk=int(dato['id']))
                        grupo.permissions.add(permiso)
                    log(u'Agregó permiso : %s' % grupo, request, "add")
                    request.session['per'] = 1
                    return ok_json()
                except Exception as ex:
                    transaction.set_rollback(True)
                    return bad_json(error=1)

            if action == 'delpermisogrupo':
                try:
                    grupo = Group.objects.get(pk=int(request.POST['id']))
                    datos = json.loads(request.POST['lista'])
                    for dato in datos:
                        permiso = Permission.objects.get(pk=int(dato['id']))
                        grupo.permissions.remove(permiso)
                    log(u'Eliminó permiso : %s' % grupo, request, "del")
                    request.session['per'] = 1
                    return ok_json()
                except Exception as ex:
                    transaction.set_rollback(True)
                    return bad_json(error=1)

            if action == 'addmodulogrupo':
                try:
                    grupo = Group.objects.get(pk=int(request.POST['id']))
                    datos = json.loads(request.POST['lista'])
                    for dato in datos:
                        modulo = Modulo.objects.get(pk=int(dato['id']))
                        if not GruposModulos.objects.filter(grupo=grupo):
                            mg = GruposModulos(grupo=grupo)
                            mg.save(request)
                        else:
                            mg = GruposModulos.objects.filter(grupo=grupo)[0]
                        mg.modulos.add(modulo)
                    log(u'Agregó módulo a grupo : %s' % grupo, request, "add")
                    request.session['per'] = 2
                    return ok_json()
                except Exception as ex:
                    transaction.set_rollback(True)
                    return bad_json(error=1)

            if action == 'delmodulogrupo':
                try:
                    grupo = Group.objects.get(pk=int(request.POST['id']))
                    datos = json.loads(request.POST['lista'])
                    for dato in datos:
                        modulo = Modulo.objects.get(pk=int(dato['id']))
                        if not GruposModulos.objects.filter(grupo=grupo):
                            mg = GruposModulos(grupo=grupo)
                            mg.save(request)
                        else:
                            mg = GruposModulos.objects.filter(grupo=grupo)[0]
                        mg.modulos.remove(modulo)
                    log(u'Eliminó módulo a grupo : %s' % grupo, request, "add")
                    request.session['per']= 2
                    return ok_json()
                except Exception as ex:
                    transaction.set_rollback(True)
                    return bad_json(error=1)

            if action == 'addreporte':
                try:
                    grupo = Group.objects.get(pk=int(request.POST['id']))
                    datos = json.loads(request.POST['lista'])
                    for dato in datos:
                        reporte = Reporte.objects.get(pk=int(dato['id']))
                        reporte.grupos.add(grupo)
                    log(u'Agregó reporte a grupo : %s' % grupo, request, "add")
                    return ok_json()
                except Exception as ex:
                    transaction.set_rollback(True)
                    return bad_json(error=1)

            if action == 'delreporte':
                try:
                    grupo = Group.objects.get(pk=int(request.POST['id']))
                    datos = json.loads(request.POST['lista'])
                    for dato in datos:
                        reporte = Reporte.objects.get(pk=int(dato['id']))
                        reporte.grupos.remove(grupo)
                    log(u'Agregó reporte a grupo : %s' % grupo, request, "add")
                    return ok_json()
                except Exception as ex:
                    transaction.set_rollback(True)
                    return bad_json(error=1)

        return bad_json(error=0)
    else:
        if 'action' in request.GET:
            action = request.GET['action']

            if action == 'addgrupo':
                try:
                    data['title'] = u'Adicionar Grupo'
                    data['form'] = GrupoSistemaForm(screenwidth=int(request.session['screenwidth']),
                                                    modal=data['modalform'])
                    return render(request, "adm_sistema/addgrupo.html", data)
                except Exception as ex:
                    pass

            if action == 'editgrupo':
                try:
                    data['title'] = u'Editar Grupo'
                    data['grupo'] = grupo = Group.objects.get(id=int(request.GET['id']))
                    data['form'] = GrupoSistemaForm(initial={'nombre': grupo.name},
                                                    screenwidth=int(request.session['screenwidth']),
                                                    modal=data['modalform'])
                    return render(request, "adm_sistema/editgrupo.html", data)
                except Exception as ex:
                    pass

            if action == 'delgrupo':
                try:
                    data['title'] = u'Eliminar Grupo'
                    data['grupo'] = grupo = Group.objects.get(id=int(request.GET['id']))
                    return render(request, "adm_sistema/delgrupo.html", data)
                except Exception as ex:
                    pass

            if action == 'permisosgrupo':
                try:
                    data['title'] = u'Permisos'
                    data['grupo'] = grupo = Group.objects.get(pk=int(request.GET['id']))
                    data['permisos_grupo'] = perm = grupo.permissions.all()
                    data['permisos'] = Permission.objects.all().exclude(id__in=[x.id for x in perm]).exclude(
                        name__startswith='Can ')
                    data['modulos_grupo'] = modulos = Modulo.objects.filter(gruposmodulos__grupo=grupo).distinct()
                    data['modulos'] = Modulo.objects.all().exclude(id__in=modulos.values_list('id', flat=True))
                    if 'per' in request.session:
                        data['per'] = int(request.session['per'])
                    else:
                        data['per'] = 1
                    return render(request, "adm_sistema/permisosgrupo.html", data)
                except Exception as ex:
                    pass

            if action == 'reportesgrupo':
                try:
                    data['title'] = u'Reportes'
                    data['grupo'] = grupo = Group.objects.get(pk=int(request.GET['id']))
                    data['reportes_grupo'] = rep = grupo.reporte_set.all()
                    data['reportes'] = Reporte.objects.all().exclude(id__in=[x.id for x in rep]).exclude(interface=True)
                    return render(request, "adm_sistema/reportesgrupo.html", data)
                except Exception as ex:
                    pass

            return url_back(request, ex=ex if 'ex' in locals() else None)
        else:
            try:
                data['title'] = u'Administración'

                data['grupos'] = Group.objects.all().order_by('name')

                if 't' in request.GET:
                    data['t'] = int(request.GET['t'])
                else:
                    data['t'] = 1

                if 'h2' in request.GET:
                    data['h2'] = int(request.GET['h2'])
                else:
                    data['h2'] = 0
                if 'h3' in request.GET:
                    data['h3'] = int(request.GET['h3'])
                else:
                    data['h3'] = 2
                if 'h4' in request.GET:
                    data['h4'] = int(request.GET['h4'])
                else:
                    data['h4'] = 0
                if 'ac1' in request.GET:
                    data['ac1'] = int(request.GET['ac1'])
                else:
                    data['ac1'] = 1
                return render(request, "adm_sistema/view.html", data)
            except Exception as ex:
                return HttpResponseRedirect('/')
