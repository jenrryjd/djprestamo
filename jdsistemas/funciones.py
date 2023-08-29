import json

from django.contrib.admin.models import DELETION, ADDITION, CHANGE, LogEntry
from django.core.paginator import Paginator
from django.http import HttpResponse
from django.contrib.auth.models import User, Group

# from django.utils.encoding import smart_text
from unicodedata import normalize
from datetime import datetime, timedelta, date

from jdsistemas.models import *

MENSAJES_ERROR = (
    'Error en la accion.',
    'No tiene permisos para realizar esta accion.'
)


def bad_json(mensaje=None, error=None, extradata=None):
    data = {'result': 'bad'}
    if mensaje:
        data.update({"icono":"error","titulo":"Advertencia",'mensaje': mensaje})
    elif error:
        if error == 0:
            data.update({"mensaje": "Solicitud incorrecta."})
        elif error == 1:
            data.update({"icono":"warning","titulo":"Advertencia","mensaje": "Error al guardar los datos. Verifique los datos ingresados"})
        elif error == 2:
            data.update({"icono":"warning","titulo":"Advertencia","mensaje": "Error al eliminar los datos."})
        elif error == 3:
            data.update({"mensaje": "Error al obtener los datos."})
        elif error == 4:
            data.update({"mensaje": "No tiene permisos para realizar esta acción."})
        elif error == 5:
            data.update({"mensaje": "Error al generar la información."})
        elif error == 6:
            data.update({"icono":"warning","titulo":"Advertencia","mensaje": "Los datos no son validos, revise la información."})
        elif error == 7:
            data.update({"mensaje": "Registro duplicado."})
        elif error == 8:
            data.update({"mensaje": "No tiene permiso para modificar la ficha del estudiante."})
        elif error == 9:
            data.update({"icono": "warning", "titulo": "Advertencia", "mensaje": "No se puede eliminar porque tiene relaciones en otros registros del sistema."})

    else:
        data.update({"mensaje": "Error en el sistema."})
    if extradata:
        data.update(extradata)
    return HttpResponse(json.dumps(data), content_type="application/json")


def ok_json(data=None, simple=None):
    if data:
        if not simple:
            if 'result' not in data.keys():
                data.update({"result": "ok"})
    else:
        data = {"result": "ok"}
    print("El contenido de data es:", data)
    return HttpResponse(json.dumps(data), content_type="application/json")

def empty_json(data):
    if 'result' not in data.keys():
        data.update({"result": "ok"})
    return HttpResponse(json.dumps(data), content_type="application/json")


def log(mensaje, request, accion):
    if accion == "del":
        logaction = DELETION
    elif accion == "add":
        logaction = ADDITION
    else:
        logaction = CHANGE
    LogEntry.objects.log_action(
        user_id=request.user.pk,
        content_type_id=None,
        object_id=None,
        object_repr='',
        action_flag=logaction,
        change_message=str(mensaje))


def url_back(request, ex=None):
    message = ''
    try:
        if ex and ex.message in MENSAJES_ERROR:
            message = "?info=%s" % ex.message
        elif ex and ex.message not in MENSAJES_ERROR:
            message = "?info=%s" % MENSAJES_ERROR[0]
    except:
        pass
    return HttpResponse("%s%s" % (request.path, message))


def fields_model(classname, app):
    try:
        module = __import__(app + '.models', fromlist=[classname])
        model = getattr(module, classname)
        fields = model._meta.get_fields()
        return fields
    except ImportError:
        raise ImportError(f"No se pudo importar el modelo '{classname}' desde la aplicación '{app}'")
    except AttributeError:
        raise AttributeError(f"No se encontró el modelo '{classname}' en la aplicación '{app}'")


def field_default_value_model(field):
    try:
        value = str(field)
        return value if 'django.db.models.fields.NOT_PROVIDED' not in value else ''
    except:
        return ''

def remover_tildes(cadena):
    trans_tab = dict.fromkeys(map(ord, u'\u0301\u0308'), None)
    cadena = normalize('NFKC', normalize('NFKD', cadena).translate(trans_tab))
    return cadena.replace('.', '').replace('!', '').replace('"', '').replace('*', '').replace('-', '').replace('+', '').replace('/', '').replace(',', '').replace(';', '').replace(':', '').replace('_', '').replace('|', '')

def generar_nombre(nombre, original):
    ext = ""
    if original.find(".") > 0:
        ext = original[original.rfind("."):]
    fecha = datetime.now().date()
    hora = datetime.now().time()
    return nombre + fecha.year.__str__() + fecha.month.__str__() + fecha.day.__str__() + hora.hour.__str__() + hora.minute.__str__() + hora.second.__str__() + ext

class MiPaginador(Paginator):
    def __init__(self, object_list, per_page, orphans=0, allow_empty_first_page=True, rango=5):
        super(MiPaginador, self).__init__(object_list, per_page, orphans=orphans,
                                          allow_empty_first_page=allow_empty_first_page)
        self.rango = rango
        self.paginas = []
        self.primera_pagina = False
        self.ultima_pagina = False

    def rangos_paginado(self, pagina):
        left = pagina - self.rango
        right = pagina + self.rango
        if left < 1:
            left = 1
        if right > self.num_pages:
            right = self.num_pages
        self.paginas = range(left, right + 1)
        self.primera_pagina = True if left > 1 else False
        self.ultima_pagina = True if right < self.num_pages else False
        self.ellipsis_izquierda = left - 1
        self.ellipsis_derecha = right + 1

def validarcedula(numero):
    nat = False
    numeroprovincias = 24
    modulo = 11
    if numero.__len__() != 10:
        return 'El numero de cedula no es valido, tiene mas de 10 digitos'
    prov = numero[0:2]
    if int(prov) > numeroprovincias or int(prov) <= 0:
        return 'El codigo de la provincia (dos primeros digitos) es invalido'
    d1 = numero[0:1]
    d2 = numero[1:2]
    d3 = numero[2:3]
    d4 = numero[3:4]
    d5 = numero[4:5]
    d6 = numero[5:6]
    d7 = numero[6:7]
    d8 = numero[7:8]
    d9 = numero[8:9]
    d10 = numero[9:10]
    p1 = 0
    p2 = 0
    p3 = 0
    p4 = 0
    p5 = 0
    p6 = 0
    p7 = 0
    p8 = 0
    p9 = 0
    if int(d3) == 7 or int(d3) == 8:
        return 'El tercer digito ingresado es invalido'
    if int(d3) < 6:
        nat = True
        p1 = int(d1) * 2
        if p1 >= 10:
            p1 -= 9
        p2 = int(d2) * 1
        if p2 >= 10:
            p2 -= 9
        p3 = int(d3) * 2
        if p3 >= 10:
            p3 -= 9
        p4 = int(d4) * 1
        if p4 >= 10:
            p4 -= 9
        p5 = int(d5) * 2
        if p5 >= 10:
            p5 -= 9
        p6 = int(d6) * 1
        if p6 >= 10:
            p6 -= 9
        p7 = int(d7) * 2
        if p7 >= 10:
            p7 -= 9
        p8 = int(d8) * 1
        if p8 >= 10:
            p8 -= 9
        p9 = int(d9) * 2
        if p9 >= 10:
            p9 -= 9
        modulo = 10
    elif int(d3) == 6:
        p1 = int(d1) * 3
        p2 = int(d2) * 2
        p3 = int(d3) * 7
        p4 = int(d4) * 6
        p5 = int(d5) * 5
        p6 = int(d6) * 4
        p7 = int(d7) * 3
        p8 = int(d8) * 2
        p9 = 0
    elif int(d3) == 9:
        p1 = int(d1) * 4
        p2 = int(d2) * 3
        p3 = int(d3) * 2
        p4 = int(d4) * 7
        p5 = int(d5) * 6
        p6 = int(d6) * 5
        p7 = int(d7) * 4
        p8 = int(d8) * 3
        p9 = int(d9) * 2
    suma = p1 + p2 + p3 + p4 + p5 + p6 + p7 + p8 + p9
    residuo = suma % modulo
    if residuo == 0:
        digitoverificador = 0
    else:
        digitoverificador = modulo - residuo
    if nat:
        if digitoverificador != int(d10):
            return 'El numero de cedula de la persona natural es incorrecto'
        else:
            return 'Ok'
    else:
        return 'El numero de cedula introducido es incorrecto'

def remover_caracteres_especiales_unicode(cadena):
    cadena = str(cadena)
    return cadena.replace('ñ', 'n').replace('Ñ', 'N').replace('Á', 'A').replace('á', 'a').replace('É', 'E').replace('é', 'e').replace('Í', 'I').replace('í', 'i').replace('Ó', 'O').replace('ó', 'o').replace('Ú', '').replace('ú', '')


def calculate_username(persona, variant=0):
    usernamevariant = (remover_caracteres_especiales_unicode(str(persona.nombre1[0]+ persona.apellido1.replace(' ','')))).lower()
    alfabeto = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '.']
    usernamevariantfinal = ''
    for letra in usernamevariant:
        if letra in alfabeto:
            usernamevariantfinal += letra
    if variant > 1:
        usernamevariantfinal += str(variant)
    if not User.objects.filter(username=usernamevariantfinal).exists():
        return usernamevariantfinal
    return calculate_username(persona, variant + 1)

def generar_usuario(persona, group_id=None):
    password = persona.cedula
    user = User.objects.create_user(calculate_username(persona), '', password)
    user.save()
    persona.usuario = user
    persona.save()
    persona.cambiar_clave()
    if group_id:
        g = Group.objects.get(pk=group_id)
        g.user_set.add(user)
        g.save()
    return user

def resetear_clave(persona):
    password = persona.cedula
    user = persona.usuario
    user.set_password(password)
    user.save()
    persona.cambiar_clave()

def generar_codigo_producto():
    if Producto.objects.all().count() == 0:
        ultimo = 1
    else:
        ultimo = Producto.objects.latest('id').id
    # Convertimos el número de producto en una cadena con un formato deseado
    codigo_producto = f"PROD{ultimo:04d}"
    return codigo_producto

def generar_codigo_tipo_producto():
    if TipoProducto.objects.all().count() == 0:
        ultimo = 1
    else:
        ultimo = TipoProducto.objects.latest('id').id
    # Convertimos el número de producto en una cadena con un formato deseado
    codigo_producto = f"TPROD{ultimo:04d}"
    return codigo_producto

UNIDADES = (
    '',
    'UN ',
    'DOS ',
    'TRES ',
    'CUATRO ',
    'CINCO ',
    'SEIS ',
    'SIETE ',
    'OCHO ',
    'NUEVE ',
    'DIEZ ',
    'ONCE ',
    'DOCE ',
    'TRECE ',
    'CATORCE ',
    'QUINCE ',
    'DIECISEIS ',
    'DIECISIETE ',
    'DIECIOCHO ',
    'DIECINUEVE ',
    'VEINTE '
)

DECENAS = (
    'VENTI',
    'TREINTA ',
    'CUARENTA ',
    'CINCUENTA ',
    'SESENTA ',
    'SETENTA ',
    'OCHENTA ',
    'NOVENTA ',
    'CIEN '
)

CENTENAS = (
    'CIENTO ',
    'DOSCIENTOS ',
    'TRESCIENTOS ',
    'CUATROCIENTOS ',
    'QUINIENTOS ',
    'SEISCIENTOS ',
    'SETECIENTOS ',
    'OCHOCIENTOS ',
    'NOVECIENTOS '
)

MONEDAS = (
    {'country': u'Colombia', 'currency': 'COP', 'singular': u'PESO COLOMBIANO', 'plural': u'PESOS COLOMBIANOS', 'symbol': u'$'},
    {'country': u'Estados Unidos', 'currency': 'USD', 'singular': u'DÓLAR', 'plural': u'DÓLARES', 'symbol': u'US$'},
    {'country': u'Europa', 'currency': 'EUR', 'singular': u'EURO', 'plural': u'EUROS', 'symbol': u'€'},
    {'country': u'México', 'currency': 'MXN', 'singular': u'PESO MEXICANO', 'plural': u'PESOS MEXICANOS', 'symbol': u'$'},
    {'country': u'Perú', 'currency': 'PEN', 'singular': u'NUEVO SOL', 'plural': u'NUEVOS SOLES', 'symbol': u'S/.'},
    {'country': u'Reino Unido', 'currency': 'GBP', 'singular': u'LIBRA', 'plural': u'LIBRAS', 'symbol': u'£'}
)


def __convert_group(n):
    output = ''

    if n == '100':
        output = "CIEN "
    elif n[0] != '0':
        output = CENTENAS[int(n[0]) - 1]

    k = int(n[1:])
    if k <= 20:
        output += UNIDADES[k]
    else:
        if k > 30 and n[2] != '0':
            output += '%sY %s' % (DECENAS[int(n[1]) - 2], UNIDADES[int(n[2])])
        else:
            output += '%s%s' % (DECENAS[int(n[1]) - 2], UNIDADES[int(n[2])])
    return output

def to_word(number, mi_moneda=None):
    if mi_moneda:
        try:
            moneda = next((x for x in MONEDAS if x['currency'] == mi_moneda), None)
            if number < 2:
                moneda = moneda['singular']
            else:
                moneda = moneda['plural']
        except Exception as ex:
            return "Tipo de moneda inválida"
    else:
        moneda = ""
    converted = ''

    if not (0 < number < 999999999):
        return 'No es posible convertir el numero a letras'

    number_str = str(number).zfill(9)
    millones = number_str[:3]
    miles = number_str[3:6]
    cientos = number_str[6:]

    if millones:
        if millones == '001':
            converted += 'UN MILLON '
        elif int(millones) > 0:
            converted += '%sMILLONES ' % __convert_group(millones)

    if miles:
        if miles == '001':
            converted += 'MIL '
        elif int(miles) > 0:
            converted += '%sMIL ' % __convert_group(miles)

    if cientos:
        if cientos == '001':
            converted += 'UN '
        elif int(cientos) > 0:
            converted += '%s ' % __convert_group(cientos)

    converted += moneda
    return converted.title()

def enletras(x):
    entera = str(x).split('.')[0]
    fraccion = str(x).split('.')[1]
    return (to_word(int(entera)) + "con " + fraccion.ljust(2, '0') + "/100").upper()