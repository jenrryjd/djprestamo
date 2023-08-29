from datetime import datetime
from django.http import HttpResponseRedirect

from jdsistemas.models import Modulo


def last_access(f):

    def new_f(*args, **kwargs):
        request = args[0]
        if 'ultimo_acceso' in request.session:
            request.session['ultimo_acceso'] = datetime.now()
        return f(request)

    return new_f

def secure_module(f):

    def new_f(*args, **kwargs):
        request = args[0]
        if request.user.is_authenticated:
            try:
                # p = request.session['perfilprincipal']
                # if request.path == '/reportes':
                #     if request.path == '/reportes' and 'action' in request.GET:
                #         pass
                # if p.es_estudiante():
                #     if request.path == '/reportes':
                #         if 'action' in request.GET:
                #             pass
                #         else:
                #             return HttpResponseRedirect("/")
                # if p.persona.necesita_cambiar_clave():
                #     return HttpResponseRedirect('/pass')
                if len(request.path[1:]) > 1:
                    # if p.es_empleador() or p.es_estudiante():
                    #     if request.path == '/reportes' and 'action' in request.GET:
                    #         return f(request)
                    # if p.es_estudiante():
                    #     g = [ALUMNOS_GROUP_ID]
                    # elif p.es_profesor():
                    #     g = [PROFESORES_GROUP_ID]
                    # elif p.es_empleador():
                    #     g = [EMPLEADORES_GRUPO_ID]
                    # else:
                    #    g = [x.id for x in p.persona.usuario.groups.exclude(id__in=[ALUMNOS_GROUP_ID, PROFESORES_GROUP_ID])]
                    # if Modulo.objects.filter(gruposmodulos__grupo__id__in=g, url=request.path[1:], activo=True).exists():
                    if Modulo.objects.all().exists():
                        return f(request)
                    else:
                        return HttpResponseRedirect("/")
                else:
                    return f(request)
            except Exception as ex:
                return HttpResponseRedirect("/")
        else:
            return HttpResponseRedirect("/")
    return new_f