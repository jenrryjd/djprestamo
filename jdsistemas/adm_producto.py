# coding=utf-8

from django.contrib.auth.decorators import login_required
from django.db import transaction
from django.db.models import Q, ProtectedError
from django.http import HttpResponseRedirect
from django.shortcuts import render, get_object_or_404
from django.template.loader import get_template, render_to_string

from jdsistemas.commonviews import adduserdata, obtener_reporte
from jdsistemas.decorators import secure_module, last_access
from jdsistemas.forms import PruebaForm, ProductoForm, TipoProductoForm
from jdsistemas.funciones import bad_json, url_back, log, ok_json, remover_tildes, MiPaginador, generar_nombre, \
    generar_codigo_producto, generar_codigo_tipo_producto
from jdsistemas.models import Prueba, Persona, Producto, TipoProducto


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
                    form = ProductoForm(request.POST, request.FILES)
                    if form.is_valid():
                        newfile = None
                        if 'imagen' in request.FILES:
                            newfile = request.FILES['imagen']
                            newfile._name = generar_nombre("producto_", newfile._name)
                        producto = Producto(tipo=form.cleaned_data['tipo'],
                                            nombre=form.cleaned_data['nombre'].upper(),
                                            codigo=generar_codigo_producto(),
                                            descripcion=form.cleaned_data['descripcion'].upper(),
                                            stock=form.cleaned_data['stock'],
                                            preciocompra=form.cleaned_data['preciocompra'],
                                            precioventa=form.cleaned_data['precioventa'],
                                            imagen=newfile if newfile else None
                                            )
                        producto.save(request)
                        log(u'Adiciono un producto: %s' % producto, request, "add")
                        return ok_json()
                    else:
                        return bad_json(error=6)
                except Exception as ex:
                    transaction.atomic()
                    return bad_json(error=1)

            if action == 'edit':
                try:
                    producto_id = request.POST.get('id')
                    producto = get_object_or_404(Producto, pk=producto_id)
                    form = ProductoForm(request.POST)
                    if form.is_valid():
                        newfile = None
                        if 'imagen' in request.FILES:
                            newfile = request.FILES['imagen']
                            newfile._name = generar_nombre("producto_", newfile._name)

                        producto.nombre = remover_tildes(form.cleaned_data['nombre'].upper())
                        producto.descripcion = remover_tildes(form.cleaned_data['descripcion'].upper())
                        producto.tipo = (form.cleaned_data['tipo'])
                        producto.stock = form.cleaned_data['stock']
                        producto.preciocompra = form.cleaned_data['preciocompra']
                        producto.precioventa = form.cleaned_data['precioventa']
                        producto.imagen = newfile if newfile else producto.imagen
                        producto.save()
                        log(u'Modifico el producto: %s' % producto, request, "edit")
                        return ok_json()
                    else:
                        return bad_json(error=6)
                except Exception as ex:
                    transaction.set_rollback(True)
                    return bad_json(error=1)

            if action == 'dell':
                try:
                    producto = Producto.objects.get(pk=request.POST['id'])
                    producto.delete()
                    log(u'Elimino el producto: %s' % producto, request, "del")
                    return ok_json()
                except ProtectedError as ex:
                    transaction.set_rollback(True)
                    # controlamos el borrar con relaciones
                    return bad_json(error=9)
                except Exception as ex:
                    transaction.set_rollback(True)
                    return bad_json(error=2)

            if action == 'addtipo':
                try:
                    form = TipoProductoForm(request.POST)
                    if form.is_valid():
                        tipoproducto = TipoProducto(codigo=generar_codigo_tipo_producto(),
                                                    nombre=form.cleaned_data['nombre'].upper())
                        tipoproducto.save(request)
                        log(u'Adiciono un tipo de producto: %s' % tipoproducto, request, "add")
                        return ok_json()
                    else:
                        return bad_json(error=6)
                except Exception as ex:
                    transaction.atomic()
                    return bad_json(error=1)

            if action == 'edittipo':
                try:
                    tipo_id = request.POST.get('id')
                    tipo = get_object_or_404(TipoProducto, pk=tipo_id)
                    form = TipoProductoForm(request.POST)
                    if form.is_valid():
                        tipo.nombre = remover_tildes(form.cleaned_data['nombre'].upper())
                        tipo.save()
                        log(u'Modifico el tipo de producto: %s' % tipo, request, "edit")
                        return ok_json()
                    else:
                        return bad_json(error=6)
                except Exception as ex:
                    transaction.set_rollback(True)
                    return bad_json(error=1)

            if action == 'delltipo':
                try:
                    tipo = TipoProducto.objects.get(pk=request.POST['id'])
                    tipo.delete()
                    log(u'Elimino el tipo de producto: %s' % tipo, request, "del")
                    return ok_json()
                except ProtectedError as ex:
                    transaction.set_rollback(True)
                    # controlamos el borrar con relaciones
                    return bad_json(error=9)
                except Exception as ex:
                    transaction.set_rollback(True)
                    return bad_json(error=2)

        return bad_json(error=0)
    else:
        if 'action' in request.GET:
            action = request.GET['action']

            if action == 'add':
                try:
                    data['title'] = u'Adicionar Producto'
                    data['form'] = ProductoForm(screenwidth=int(request.session['screenwidth']),
                                                modal=data['modalform'])
                    return render(request, "producto/add.html", data)

                except Exception as ex:
                    pass

            if action == 'edit':
                try:
                    data['title'] = u'Editar Producto'
                    data['producto'] = producto = Producto.objects.get(pk=request.GET['id'])
                    form = ProductoForm(initial={'nombre': producto.nombre,
                                                 'descripcion': producto.descripcion,
                                                 'tipo': producto.tipo,
                                                 'stock': producto.stock,
                                                 'preciocompra': producto.preciocompra,
                                                 'precioventa': producto.precioventa},
                                        screenwidth=int(request.session['screenwidth']), modal=data['modalform'])
                    data['form'] = form
                    # data['permite_modificar'] = False
                    return render(request, "producto/edit.html", data)
                except Exception as ex:
                    pass

            if action == 'dell':
                try:
                    data['title'] = u'Eliminar Producto'
                    data['producto'] = Producto.objects.get(pk=request.GET['id'])
                    return render(request, "producto/del.html", data)
                except Exception as ex:
                    pass

            if action == 'tipos':
                try:
                    data['title'] = u'Tipos de Productos'
                    tipos = TipoProducto.objects.all()

                    data['tipos'] = tipos
                    return render(request, "producto/tipos.html", data)
                except Exception as ex:
                    pass

            if action == 'addtipo':
                try:
                    data['title'] = u'Adicionar Tipo de Producto'
                    data['form'] = TipoProductoForm(screenwidth=int(request.session['screenwidth']),
                                                    modal=data['modalform'])
                    return render(request, "producto/addtipo.html", data)

                except Exception as ex:
                    pass

            if action == 'edittipo':
                try:
                    data['title'] = u'Editar Producto'
                    data['tipo'] = tipo = TipoProducto.objects.get(pk=request.GET['id'])
                    form = TipoProductoForm(initial={'nombre': tipo.nombre},
                                            screenwidth=int(request.session['screenwidth']), modal=data['modalform'])
                    data['form'] = form
                    # data['permite_modificar'] = False
                    return render(request, "producto/edittipo.html", data)
                except Exception as ex:
                    pass

            if action == 'delltipo':
                try:
                    data['title'] = u'Eliminar tipo de Producto'
                    data['tipo'] = TipoProducto.objects.get(pk=request.GET['id'])
                    return render(request, "producto/deltipo.html", data)
                except Exception as ex:
                    pass

            return url_back(request, ex=ex if 'ex' in locals() else None)
        else:
            try:
                data['title'] = u"Administración de Productos"
                data['productos'] = productos = Producto.objects.all()
                search = None
                ids = None
                if 's' in request.GET:
                    search = request.GET['s'].strip()
                    productos = productos.filter(Q(nombre__icontains=search) |
                                                 Q(descripcion__icontains=search) |
                                                 Q(codigo__icontains=search)
                                                 ).distinct()

                elif 'id' in request.GET:
                    ids = request.GET['id']
                    productos = productos.filter(id=ids)
                else:
                    productos = productos.all()

                paging = MiPaginador(productos, 15)
                p = 1
                try:
                    paginasesion = 1
                    if 'paginador' in request.session and 'paginador_url' in request.session:
                        if request.session['paginador_url'] == 'adm_producto':
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
                request.session['paginador_url'] = 'adm_producto'
                data['paging'] = paging
                data['rangospaging'] = paging.rangos_paginado(p)
                data['page'] = page
                data['search'] = search if search else ""
                data['ids'] = ids if ids else ""
                data['productos'] = page.object_list

                return render(request, "producto/view.html", data)

            except Exception as ex:
                return HttpResponseRedirect('/')
