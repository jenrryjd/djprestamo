# coding=utf-8

from django.contrib.auth.decorators import login_required
from django.db import transaction
from django.http import HttpResponseRedirect
from django.shortcuts import render, get_object_or_404
from django.template.loader import get_template, render_to_string

from jdsistemas.commonviews import adduserdata, obtener_reporte
from jdsistemas.decorators import secure_module, last_access
from jdsistemas.forms import PruebaForm
from jdsistemas.funciones import bad_json, url_back, log, ok_json, remover_tildes
from jdsistemas.models import Prueba, Persona


@login_required(login_url='/login')
@secure_module
@last_access
@transaction.atomic()
def view(request):
    global ex
    data = {}
    adduserdata(request, data)
    persona = Persona.objects.get(pk=request.session['persona'])
    if request.method == 'POST':
        if 'action' in request.POST:
            action = request.POST['action']

            if action == 'add':
                try:
                    form = PruebaForm(request.POST, request.FILES)
                    if form.is_valid():
                        prueba = Prueba(nombre1=form.cleaned_data['nombre1'].upper(),
                                        apellido1=form.cleaned_data['apellido1'].upper(),
                                        nacimiento=form.cleaned_data['nacimiento'],
                                        sexo=form.cleaned_data['sexo']
                                        )
                        prueba.save(request)
                        log(u'Adiciono a la persona: %s' % prueba, request, "add")
                        return ok_json()
                    else:
                        return bad_json(error=6)
                except Exception as ex:
                    transaction.atomic()
                    return bad_json(error=1)

            if action == 'edit':
                try:
                    prueba_id = request.POST.get('id')
                    prueba = get_object_or_404(Prueba, pk=prueba_id)
                    form = PruebaForm(request.POST)
                    if form.is_valid():
                        prueba.nombre1 = remover_tildes(form.cleaned_data['nombre1'].upper())
                        prueba.apellido1 = remover_tildes(form.cleaned_data['apellido1'].upper())
                        prueba.nacimiento = (form.cleaned_data['nacimiento'])
                        prueba.sexo = form.cleaned_data['sexo']
                        prueba.save()
                        log(u'Modifico la persona: %s' % prueba, request, "edit")
                        return ok_json()
                    else:
                        return bad_json(error=6)
                except Exception as ex:
                    transaction.set_rollback(True)
                    return bad_json(error=1)

            if action == 'dell':
                try:
                    prueba = Prueba.objects.get(pk=request.POST['id'])
                    prueba.delete()
                    log(u'Elimino persona: %s' % prueba, request, "del")
                    return ok_json()
                except Exception as ex:
                    transaction.set_rollback(True)
                    return bad_json(error=2)

            if action == 'info':
                try:
                    data['prueba'] = Prueba.objects.get(pk=request.POST['id'])
                    template = get_template("jdpruebas/info.html")
                    html = render_to_string('jdpruebas/info.html', data)
                    return ok_json(data={'html': html})
                except Exception as ex:
                    transaction.rollback()
                    return bad_json(error=1)

        return bad_json(error=0)
    else:
        if 'action' in request.GET:
            action = request.GET['action']

            if action == 'add':
                try:
                    data['title'] = u'Adicionar Prueba'
                    data['form'] = PruebaForm(screenwidth=int(request.session['screenwidth']),
                                              modal=data['modalform'])
                    return render(request, "jdpruebas/add.html", data)

                except Exception as ex:
                    pass

            if action == 'edit':
                try:
                    data['title'] = u'Editar Persona'
                    data['prueba'] = prueba = Prueba.objects.get(pk=request.GET['id'])
                    form = PruebaForm(initial={'nombre1': prueba.nombre1,
                                               'apellido1': prueba.apellido1,
                                               'nacimiento': prueba.nacimiento,
                                               'sexo': prueba.sexo},
                                      screenwidth=int(request.session['screenwidth']), modal=data['modalform'])
                    data['form'] = form
                    # data['permite_modificar'] = False
                    return render(request, "jdpruebas/edit.html", data)
                except Exception as ex:
                    pass

            if action == 'dell':
                try:
                    data['title'] = u'Eliminar Persona'
                    data['prueba'] = Prueba.objects.get(pk=request.GET['id'])
                    return render(request, "jdpruebas/del.html", data)
                except Exception as ex:
                    pass

            return url_back(request, ex=ex if 'ex' in locals() else None)
        else:
            try:
                data['title'] = u"Personas registradas"
                data['personas'] = persona = Prueba.objects.all()
                data['reporte_0'] = obtener_reporte('persona')
                return render(request, "jdpruebas/pruebas.html", data)
            except Exception as ex:
                return HttpResponseRedirect('/')
