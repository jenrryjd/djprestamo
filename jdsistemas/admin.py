from django.contrib import admin
from django.contrib.admin.models import LogEntry

from jdsistemas.settings import *
from .models import *


class ModeloBaseAdmin(admin.ModelAdmin):

    def get_actions(self, request):
        actions = super(ModeloBaseAdmin, self).get_actions(request)
        if request.user.username not in [x[0] for x in MANAGERS]:
            del actions['delete_selected']
        return actions

    def has_add_permission(self, request):
        return request.user.username in [x[0] for x in MANAGERS]

    def has_change_permission(self, request, obj=None):
        return True

    def has_delete_permission(self, request, obj=None):
        return request.user.username in [x[0] for x in MANAGERS]

    def get_form(self, request, obj=None, **kwargs):
        self.exclude = (
        "usuario_creacion", "fecha_creacion", "usuario_modificacion", "fecha_modificacion", "status", "valida_deuda",
        "extendido", "becado", "becaexterna", "iece", "beneficiomonetario", "tipobeca", "porcientobeca", "montobeca",
        "montomensual", "montobeneficio", "cantidadmeses", "fechatope", "formalizada", "promedionotas",
        "promedioasistencias", "aprobadofinanzas", "permiteanular", "promovido", "paraleloprincipal", "estadomatricula")
        form = super(ModeloBaseAdmin, self).get_form(request, obj, **kwargs)
        return form

    def save_model(self, request, obj, form, change):
        if request.user.username not in [x[0] for x in MANAGERS]:
            raise Exception('Sin permiso a modificacion.')
        else:
            obj.save(request)


class LogEntryAdmin(ModeloBaseAdmin):
    date_hierarchy = 'action_time'
    list_filter = ['action_flag']
    search_fields = ['change_message', 'object_repr', 'user__username']
    list_display = ['action_time', 'user', 'action_flag', 'change_message']

    def get_actions(self, request):
        actions = super(LogEntryAdmin, self).get_actions(request)
        if 'delete_selected' in actions:
            del actions['delete_selected']
        return actions

    def has_add_permission(self, request):
        return False

    def has_change_permission(self, request, obj=None):
        self.readonly_fields = [x.name for x in self.model._meta.local_fields]
        return True

    def has_delete_permission(self, request, obj=None):
        return False

    def save_model(self, request, obj, form, change):
        raise Exception('Sin permiso a modificacion')


# class ModuloAdmin(ModeloBaseAdmin):
#     list_display = ('url', 'nombre', 'descripcion', 'activo')
#     ordering = ('url',)
#     search_fields = ('url', 'nombre', 'descripcion')
#     list_filter = ('activo',)

class ModeloBaseTabularAdmin(admin.TabularInline):
    exclude = ("usuario_creacion", "fecha_creacion", "usuario_modificacion", "fecha_modificacion")


class ParametroReporteAdmin(ModeloBaseTabularAdmin):
    model = ParametroReporte


class ReporteAdmin(ModeloBaseAdmin):
    inlines = [ParametroReporteAdmin]
    list_display = ('nombre', 'descripcion', 'archivo', 'categoria', 'interface')
    ordering = ('nombre',)
    search_fields = ('nombre',)
    list_filter = ('categoria', 'grupos')


admin.site.register(LogEntry, LogEntryAdmin)
admin.site.register(Persona)
admin.site.register(Pais)
admin.site.register(Provincia)
admin.site.register(Canton)
admin.site.register(Genero)
admin.site.register(Sexo)
admin.site.register(TipoDocumento)
admin.site.register(Modulo)
admin.site.register(CategoriaReporte, ModeloBaseAdmin)
admin.site.register(Reporte, ReporteAdmin)
