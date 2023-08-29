import os

from django import forms
from django.contrib.auth.models import Group
from django.utils.safestring import mark_safe

from jdsistemas.models import Canton, Parroquia, PersonaEstadoCivil, Provincia, Pais, Sexo, Nacionalidad, TipoProducto, \
    TipoDocumento
from jdsistemas.templatetags.jd_extras import args


class BaseForm(forms.Form):
    # form_s = '450'
    # form_m = '650'
    # form_l = '850'
    # form_xl = '1024'
    formbase = forms.CharField(widget=forms.HiddenInput(), required=False)
    formtype = forms.CharField(widget=forms.HiddenInput(), required=False)
    formwidth = forms.IntegerField(widget=forms.HiddenInput(), required=False)
    screenwidth = forms.IntegerField(widget=forms.HiddenInput(), required=False)
    labelwidth = forms.IntegerField(widget=forms.HiddenInput(), required=False)
    modal = forms.IntegerField(widget=forms.HiddenInput(), required=False)

    def __init__(self, *args, **kwargs):
        # ajaxformdinamicbs.html / ajaxformbs.html
        formbase = kwargs.pop('formbase', 'ajaxformbs.html')
        formtype = kwargs.pop('formtype', 'horizontal')
        formwidth = kwargs.pop('formwidth', 850)
        screenwidth = kwargs.pop('screenwidth', 1024)
        labelwidth = kwargs.pop('labelwidth', 160)
        modal = kwargs.pop('modal', 0)
        super(BaseForm, self).__init__(*args, **kwargs)
        self.fields['formbase'].initial = formbase
        self.fields['formtype'].initial = formtype
        self.fields['formwidth'].initial = formwidth
        self.fields['screenwidth'].initial = screenwidth
        self.fields['labelwidth'].initial = labelwidth
        self.fields['modal'].initial = modal
        self.extra_paramaters()

    def extra_paramaters(self):
        pass

    def form_base(self):
        if self.fields['modal'].initial == 0:
            return 'ajaxformbs.html'
        else:
            return self.fields['formbase'].initial

    def form_width(self):
        return int(self.fields['formwidth'].initial)

    def screenwidth_width(self):
        return int(self.fields['screenwidth'].initial)

    def form_real_width(self):
        if self.screenwidth_width() < self.form_width():
            self.fields['formtype'].initial = 'vertical'
            return self.screenwidth_width()
        return self.form_width()


class CheckboxSelectMultipleCustom(forms.CheckboxSelectMultiple):
    def render(self, *args, **kwargs):
        output = super(CheckboxSelectMultipleCustom, self).render(*args, **kwargs)
        return mark_safe(output.replace(u'<ul>',
                                        u'<div class="custom-multiselect" style="width: 100%;overflow: scroll"><ul>').replace(
            u'</ul>',
            u'</ul></div><input type="text" class="inputmultiselect" value="" id="id_' + args[0] + '_control" name="' +
            args[0] + '_control" basename="' + args[0] + '" style="display: none">').replace(u'<li>', u'').replace(
            u'</li>', u'').replace(u'<label', u'<div style="width: 900px"><li').replace(u'</label>', u'</li></div>'))


class ExtFileField(forms.FileField):
    """
    * max_upload_size - a number indicating the maximum file size allowed for upload.
            500Kb - 524288
            1MB   - 1048576
            2.10mb - 2621440
            10mb   - 10485760
            10MB  - 10485760
            20MB  - 20971520
            50MB  - 104857600
            100MB - 104857600
            250MB - 214958080
            500MB - 429916160
    t = ExtFileField(ext_whitelist=(".pdf", ".txt"), max_upload_size=)
    """

    def __init__(self, *args, ext_whitelist=(), max_upload_size=None, **kwargs):
        self.ext_whitelist = [i.lower() for i in ext_whitelist]
        self.max_upload_size = max_upload_size
        super().__init__(*args, **kwargs)

    def clean(self, *args, **kwargs):
        upload = super().clean(*args, **kwargs)
        if upload:
            size = upload.size
            filename = upload.name
            ext = os.path.splitext(filename)[1]
            ext = ext.lower()
            if size == 0 or ext not in self.ext_whitelist or size > self.max_upload_size:
                raise forms.ValidationError("Tipo de fichero o tamaño no permitido!")


def deshabilitar_campo(form, campo):
    form.fields[campo].widget.attrs['readonly'] = True
    form.fields[campo].widget.attrs['disabled'] = True


class GrupoSistemaForm(BaseForm):
    nombre = forms.CharField(label=u'Nombre', )

    def extra_paramaters(self):
        self.fields['formbase'].initial = 'ajaxformdinamicbs.html'

class CambioClaveForm(BaseForm):
    anterior = forms.CharField(label=u'Clave anterior', widget=forms.PasswordInput())
    nueva = forms.CharField(label=u'Nueva clave', widget=forms.PasswordInput())
    repetir = forms.CharField(label=u'Repetir clave', widget=forms.PasswordInput())

    def extra_paramaters(self):
        self.fields['formwidth'].initial = 500
        self.fields['formbase'].initial = 'ajaxformdinamicbs.html'

class CambioClaveSimpleForm(BaseForm):
    anterior = forms.CharField(label=u'Clave anterior', widget=forms.PasswordInput())
    nueva = forms.CharField(label=u'Nueva clave', widget=forms.PasswordInput())
    repetir = forms.CharField(label=u'Repetir clave', widget=forms.PasswordInput())

    def extra_paramaters(self):
        self.fields['formwidth'].initial = 500


class PersonaForm(BaseForm):
    nombre1 = forms.CharField(label=u"1er Nombre", max_length=50,
                              widget=forms.TextInput(attrs={'placeholder': 'PRIMER NOMBRE'}))
    nombre2 = forms.CharField(label=u'2do Nombre', max_length=50, required=False, widget=forms.TextInput())
    apellido1 = forms.CharField(label=u"1er apellido", max_length=50, required=False, widget=forms.TextInput())
    apellido2 = forms.CharField(label=u"2do apellido", max_length=50, required=False, widget=forms.TextInput())
    cedula = forms.CharField(label=u"Cédula", max_length=10, required=False, widget=forms.TextInput(),
                             help_text='Ingrese hasta 10 caracteres')
    nacimiento = forms.DateField(label="Fecha nacimiento", widget=forms.DateInput(
        attrs={'type': 'date', 'class': 'selectorfecha', 'onkeydown': 'return false;'}))
    sexo = forms.ModelChoiceField(label=u"Género", queryset=Sexo.objects.all(), widget=forms.Select())
    pais = forms.ModelChoiceField(label=u"País de residencia", queryset=Pais.objects.all(), required=False,
                                  widget=forms.Select())
    provincia = forms.ModelChoiceField(label=u"Provincia de residencia",
                                       queryset=Provincia.objects.all().order_by('nombre'), required=False,
                                       widget=forms.Select())
    canton = forms.ModelChoiceField(label=u"Cantón de residencia", queryset=Canton.objects.order_by('nombre'),
                                    required=False, widget=forms.Select())
    parroquia = forms.ModelChoiceField(label=u"Parroquia de residencia",
                                       queryset=Parroquia.objects.all().order_by('nombre'), required=False,
                                       widget=forms.Select())
    sector = forms.CharField(label=u"Sector", max_length=100, required=False, widget=forms.TextInput())
    direccion = forms.CharField(label=u"Calle principal", max_length=100, required=False, widget=forms.TextInput())
    num_direccion = forms.CharField(label=u"Número de residencia", max_length=15, required=False,
                                    widget=forms.TextInput())
    estadocivil = forms.ModelChoiceField(label=u'Estado civil', queryset=PersonaEstadoCivil.objects, required=False,
                                         widget=forms.Select())

    def extra_paramaters(self):
        self.fields['formbase'].initial = 'ajaxformdinamicbs.html'

    def editar(self, persona):
        deshabilitar_campo(self, 'nombre1')
        deshabilitar_campo(self, 'nombre2')
        deshabilitar_campo(self, 'apellido1')
        deshabilitar_campo(self, 'apellido2')


class AdministrativosForm(BaseForm):
    nombre1 = forms.CharField(label=u"1er Nombre", max_length=50, widget=forms.TextInput())
    nombre2 = forms.CharField(label=u"2do Nombre", max_length=50, required=False, widget=forms.TextInput())
    apellido1 = forms.CharField(label=u"1er Apellido", max_length=50, widget=forms.TextInput())
    apellido2 = forms.CharField(label=u"2do Apellido", max_length=50, required=False, widget=forms.TextInput())
    cedula = forms.CharField(label=u"Cédula", max_length=10, required=False, widget=forms.TextInput())
    nacimiento = forms.DateField(label="Fecha nacimiento", widget=forms.DateInput(
        attrs={'type': 'date', 'class': 'selectorfecha', 'onkeydown': 'return false;'}))
    sexo = forms.ModelChoiceField(label=u"Género", queryset=Sexo.objects.all(), widget=forms.Select())
    nacionalidad = forms.ModelChoiceField(label=u"Nacionalidad", queryset=Nacionalidad.objects.all(), required=False,
                                          widget=forms.Select())
    pais = forms.ModelChoiceField(label=u"País residencia", queryset=Pais.objects.all(), required=False,
                                  widget=forms.Select())
    provincia = forms.ModelChoiceField(label=u"Provincia de residencia", queryset=Provincia.objects.all(),
                                       required=False, widget=forms.Select())
    canton = forms.ModelChoiceField(label=u"Cantón de residencia", queryset=Canton.objects.all(), required=False,
                                    widget=forms.Select())
    parroquia = forms.ModelChoiceField(label=u"Parroquia de residencia", queryset=Parroquia.objects.all(),
                                       required=False, widget=forms.Select())
    sector = forms.CharField(label=u"Sector", max_length=100, required=False, widget=forms.TextInput())
    direccion = forms.CharField(label=u"Calle Principal", max_length=100, required=False, widget=forms.TextInput())
    telefono = forms.CharField(label=u"Teléfono Movil", max_length=100, required=False, widget=forms.TextInput())
    email = forms.CharField(label=u"Correo Electrónico", max_length=240, required=False, widget=forms.TextInput())


    def extra_paramaters(self):
        self.fields['formbase'].initial = 'ajaxformdinamicbs.html'

    def editar(self, administrativo):
        self.fields['canton'].queryset = Canton.objects.filter(provincia=administrativo.persona.provincia)
        self.fields['parroquia'].queryset = Parroquia.objects.filter(canton=administrativo.persona.canton)
        self.fields['canton'].queryset = Canton.objects.filter(provincia=administrativo.persona.provincia)
        self.fields['parroquia'].queryset = Parroquia.objects.filter(canton=administrativo.persona.canton)
        self.fields['grupo'].widget = forms.HiddenInput()


class PruebaForm(BaseForm):
    nombre1 = forms.CharField(label=u"1er Nombre", max_length=50,
                              widget=forms.TextInput(attrs={'placeholder': 'PRIMER NOMBRE'}))
    apellido1 = forms.CharField(label=u"1er apellido", max_length=50, required=False, widget=forms.TextInput())
    nacimiento = forms.DateField(label="Fecha nacimiento", widget=forms.DateInput(
        attrs={'type': 'date', 'class': 'selectorfecha', 'onkeydown': 'return false;'}))
    sexo = forms.ModelChoiceField(label=u"Género", queryset=Sexo.objects.all(), widget=forms.Select())

    def extra_paramaters(self):
        self.fields['formbase'].initial = 'ajaxformdinamicbs.html'

    def editar(self, persona):
        deshabilitar_campo(self, 'nombre1')


class GrupoUsuarioForm(BaseForm):
    grupo = forms.ModelChoiceField(label=u'Grupo', queryset=Group.objects.all().order_by('name'), required=False,
                                   widget=forms.Select())

    def grupos(self, lista):
        self.fields['grupo'].queryset = lista

    def extra_paramaters(self):
        self.fields['formwidth'].initial = 650
        self.fields['formbase'].initial = 'ajaxformdinamicbs.html'

class ProductoForm(BaseForm):
    # codigo = forms.CharField(label=u"Codigo", max_length=50,
    #                          widget=forms.TextInput(attrs={'placeholder': 'CODIGO DEL PRODUCTO'}))
    nombre = forms.CharField(label=u"Nombre", max_length=50,
                             widget=forms.TextInput(attrs={'placeholder': 'NOMBRE DEL PRODUCTO'}))
    tipo = forms.ModelChoiceField(label=u"Tipo Producto", queryset=TipoProducto.objects.all(), widget=forms.Select())

    descripcion = forms.CharField(required=False,label=u"Descripcion", max_length=50,
                             widget=forms.TextInput(attrs={'placeholder': 'DESCRPCIÓN DEL PRODUCTO'}))
    stock = forms.IntegerField(label=u"Stock", initial='0', widget=forms.TextInput(attrs={'class': 'imp-numbersmall', 'decimales': '0'}))
    preciocompra = forms.FloatField(label=u'Precio Compra', initial='0.00', required=True, widget=forms.TextInput(attrs={'class': 'imp-moneda'}))
    precioventa = forms.FloatField(label=u'Precio Venta', initial='0.00', required=True, widget=forms.TextInput(attrs={'class': 'imp-moneda'}))
    imagen = ExtFileField(required=False,label=u'Seleccione Imagen',  help_text=u'Tamaño máximo permitido 1M, en formato jpg', ext_whitelist=(".jpg", ), max_upload_size=1048576)


    def extra_paramaters(self):
        self.fields['formbase'].initial = 'ajaxformdinamicbs.html'

class TipoProductoForm(BaseForm):
    nombre = forms.CharField(label=u"Nombre", max_length=50,
                             widget=forms.TextInput(attrs={'placeholder': 'TIPO DE PRODUCTO'}))

    def extra_paramaters(self):
        self.fields['formbase'].initial = 'ajaxformdinamicbs.html'

class ClienteForm(BaseForm):
    tipodocumento = forms.ModelChoiceField(label=u"Tipo Documento", queryset=TipoDocumento.objects.all(),
                                       required=True, widget=forms.Select())
    numeroidentificacion = forms.CharField(label=u"Num. Identificación", max_length=25, widget=forms.TextInput())
    nombres = forms.CharField(label=u"Nombres", max_length=100, required=False, widget=forms.TextInput())
    apellidos = forms.CharField(label=u"Apellidos", max_length=100, widget=forms.TextInput())
    nombrecomercial = forms.CharField(label=u"Nombre Comercial", max_length=100, required=False, widget=forms.TextInput())
    direccion = forms.CharField(label=u"Dirección", max_length=100, required=False, widget=forms.TextInput())
    email = forms.CharField(label=u"Correo Electrónico", max_length=240, required=False, widget=forms.TextInput())
    telefono = forms.CharField(label=u"Teléfono", max_length=100, required=False, widget=forms.TextInput())


    def extra_paramaters(self):
        self.fields['formbase'].initial = 'ajaxformdinamicbs.html'
