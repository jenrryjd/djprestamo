# coding=utf-8
from django import template
from django.contrib.auth.models import User

from jdsistemas.funciones import fields_model, field_default_value_model
from jdsistemas.models import null_to_numeric

register = template.Library()

@register.simple_tag
def get_cantidad_integrantes(grupo):
    return User.objects.filter(groups=grupo).count()

def callmethod(obj, methodname):
    method = getattr(obj, methodname)
    if obj.__dict__.has_key("__callArg"):
        ret = method(*obj.__callArg)
        del obj.__callArg
        return ret
    return method()


def args(obj, arg):
    if not obj.__dict__.has_key("__callArg"):
        obj.__callArg = []
    obj.__callArg.append(arg)
    return obj


def suma(var, value=1):
    return var + value


def resta(var, value=1):
    return var - value


def divide(value, arg):
    return int(value) / int(arg) if arg else 0


def multiplica(value, arg):
    return value * arg


def porciento(value, arg):
    if arg:
        return null_to_numeric((value * 100.0) / arg, 2)
    return 0


def calendarbox(var, dia):
    return var[dia]


def calendarboxdetails(var, dia):
    lista = var[dia]
    result = []
    for x in lista:
        b = [x.split(',')[0], x.split(',')[1]]
        result.append(b)
    return result


def calendarboxdetailsmostrar(var, dia):
    return var[dia]


def calendarboxdetails2(var, dia):
    lista = var[dia]
    result = []
    b = []
    for x in lista:
        b.append(x[0])
        b.append(x[1])
        result.append(b)
    return result


def calendarboxdetailssubir(var, dia):
    lista = var[dia]
    result = []
    b = []
    for x in lista:
        b.append(x[0])
        b.append(x[1])
        b.append(x[2])
        b.append(x[3])
        result.append(b)
    return result


def times(number):
    return range(number)


register.filter('filedsmodel', fields_model)
register.filter('fielddefaultvaluemodel', field_default_value_model)
register.filter('times', times)
register.filter("call", callmethod)
register.filter("args", args)
register.filter("suma", suma)
register.filter("multiplica", multiplica)
register.filter("resta", resta)
register.filter("porciento", porciento)
register.filter("divide", divide)
register.filter("calendarbox", calendarbox)
register.filter("calendarboxdetails", calendarboxdetails)
register.filter("calendarboxdetails2", calendarboxdetails2)
register.filter("calendarboxdetailsmostrar", calendarboxdetailsmostrar)
register.filter("calendarboxdetailssubir", calendarboxdetailssubir)

