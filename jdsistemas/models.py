from decimal import Decimal, ROUND_HALF_UP

from django.contrib.auth.models import User, Group
from django.db import models
from django.db.models import Sum

from jdsistemas.funciones import *
from django.db.models.query import QuerySet


# class CustomQuerySet(QuerySet):
#     def delete(self):
#         for i in self:
#             i.delete()
from jdsistemas.settings import PERFIL_PACIENTE_ID, PERFIL_ADMINISTRATIVO_ID, PERFIL_DOCTOR_ID, PERFIL_CLIENTE_ID


class CustomQuerySet(QuerySet):
    def delete(self, using=None, keep_parents=False):
        # Llamamos al método `delete` de la superclase con los mismos argumentos
        super().delete(using=using, keep_parents=keep_parents)


class ActiveManager(models.Manager):
    def get_queryset(self):
        return CustomQuerySet(self.model, using=self._db)


def null_to_text(text, upper=True, trim=True, cap=False, lower=False, transform=True):
    if not text:
        return ''
    if transform:
        if upper:
            text = text.upper()
        if cap:
            text = text.capitalize()
        if lower:
            text = text.lower()
    if trim:
        text = text.strip()
    return text


from django.db import models
from django.utils import timezone
from django.contrib.auth import get_user_model


# class ActiveManager(models.Manager):
#     def get_queryset(self):
#         return super().get_queryset().filter(activo=True)

class ActiveManager(models.Manager):
    def get_query_set(self):
        return CustomQuerySet(self.model, using=self._db)


class Perms(models.Model):
    class Meta:
        permissions = (
            ("puede_modificar_parametros_institucion", "Puede modificar parametros de la institucion jd"),
        )


class ModeloBase(models.Model):
    """ Modelo base para todos los modelos del proyecto """
    usuario_creacion = models.ForeignKey(get_user_model(), related_name='+', blank=True, null=True,
                                         on_delete=models.PROTECT)
    fecha_creacion = models.DateTimeField(blank=True, null=True)
    usuario_modificacion = models.ForeignKey(get_user_model(), related_name='+', blank=True, null=True,
                                             on_delete=models.PROTECT)
    fecha_modificacion = models.DateTimeField(blank=True, null=True)

    def en_uso(self):
        """ Método que verifica si el modelo esta en uso """
        try:
            for x in self._meta.related_objects:
                comando = f"{x.related_model._meta.object_name}.objects.filter({x.field.attname}={self.id}).count() >= 1"
                existe = eval(comando)
                if existe:
                    return True

            return False
        except:
            pass
        return True

    objects = ActiveManager()

    def extra_delete(self):
        return [True, False]

    def delete(self, force=True, extra=None, *args, **kwargs):
        """ Método para eliminar un registro """
        extra = self.extra_delete()
        if not extra[0]:
            raise Exception('No se puede eliminar')
        if extra[1]:
            if self.en_uso():
                raise Exception('Registros relacionados')
        self.__class__.objects.filter(pk=self.pk).delete(*args, **kwargs)

    def save(self, *args, **kwargs):
        usuario = None
        if len(args):
            usuario = args[0].user.id
        if self.id:
            self.usuario_modificacion_id = usuario if usuario else 1
            self.fecha_modificacion = timezone.now()
        else:
            self.usuario_creacion_id = usuario if usuario else 1
            self.fecha_creacion = timezone.now()
        super().save(*args, **kwargs)

    class Meta:
        abstract = True


class Modulo(ModeloBase):
    url = models.CharField(default='', max_length=100, verbose_name=u'URL')
    nombre = models.CharField(default='', max_length=100, verbose_name=u'Nombre')
    descripcion = models.CharField(default='', max_length=200, verbose_name=u'Descripción')
    activo = models.BooleanField(default=True, verbose_name=u'Activo')
    externo = models.BooleanField(default=False, verbose_name=u'Externo')

    def __str__(self):
        return u'%s (/%s)' % (self.nombre, self.url)

    class Meta:
        verbose_name_plural = u"Modulos"
        ordering = ['nombre']
        unique_together = ('url',)

    def save(self, *args, **kwargs):
        self.url = null_to_text(self.url, lower=True)
        self.nombre = null_to_text(self.nombre, cap=True)
        self.descripcion = null_to_text(self.descripcion, cap=True)
        super(Modulo, self).save(*args, **kwargs)


class GruposModulos(ModeloBase):
    from django.contrib.auth.models import Group
    grupo = models.ForeignKey(Group, on_delete=models.PROTECT)
    modulos = models.ManyToManyField(Modulo, verbose_name=u'Modulos')

    def __str__(self):
        return u'%s' % self.grupo.name

    class Meta:
        verbose_name_plural = u"Grupos de modulos"
        ordering = ['grupo']
        unique_together = ('grupo',)

    def modulos_activos(self):
        return self.modulos.filter(activo=True)


def null_to_numeric(valor, decimales=None):
    if decimales is not None and decimales >= 0:
        if decimales >= 1:
            return float(str(Decimal(str(valor) if valor else 0).quantize(Decimal('.' + ''.zfill(decimales - 1) + '1'),
                                                                          rounding=ROUND_HALF_UP) if valor else 0))
        else:
            return float(str(Decimal(str(valor) if valor else 0).quantize(Decimal('1.'),
                                                                          rounding=ROUND_HALF_UP) if valor else 0))
    return valor if valor else 0


# ********************** REPORTES ***********************************************************************************
TIPOS_PARAMETRO_REPORTE = (
    (1, u'TEXTO'),
    (2, u'NUMERO ENTERO'),
    (3, u'NUMERO DECIMAL'),
    (4, u'VERDADERO O FALSO'),
    (5, u'REGISTRO DE DATOS'),
    (6, u'FECHA'),
    (7, u'LISTA'),
    (8, u'LISTA DEFINIDA'),
)


class CategoriaReporte(ModeloBase):
    nombre = models.CharField(max_length=50, verbose_name=u'Nombre')

    def __str__(self):
        return u'%s' % self.nombre

    class Meta:
        verbose_name_plural = u"Categorías de reportes"
        ordering = ['nombre']
        unique_together = ('nombre',)

    def save(self, *args, **kwargs):
        self.nombre = null_to_text(self.nombre)
        super(CategoriaReporte, self).save(*args, **kwargs)


class Reporte(ModeloBase):
    nombre = models.CharField(default='', max_length=100, verbose_name=u'Nombre')
    descripcion = models.CharField(default='', max_length=200, verbose_name=u'Descripción')
    detalle = models.CharField(default='', max_length=400, verbose_name=u'Detalle')
    archivo = models.FileField(upload_to='reportes', blank=True, null=True, verbose_name=u'Archivo')
    categoria = models.ForeignKey(CategoriaReporte, verbose_name=u'Categoria', on_delete=models.PROTECT)
    grupos = models.ManyToManyField(Group, blank=True, verbose_name=u'Grupos')
    interface = models.BooleanField(default=False, verbose_name=u'Interface')
    formatoxls = models.BooleanField(default=True, verbose_name=u'Formatoxls')
    formatocsv = models.BooleanField(default=True, verbose_name=u'Formatocsv')
    formatoword = models.BooleanField(default=True, verbose_name=u'Formatoword')
    formatopdf = models.BooleanField(default=True, verbose_name=u'FormatoPDF')
    vista = models.TextField(default='', blank=True, null=True, verbose_name=u'vista')
    html = models.TextField(default='', blank=True, null=True, verbose_name=u'html')

    def __str__(self):
        return u'%s' % self.nombre

    class Meta:
        verbose_name_plural = u"Reportes"
        ordering = ['nombre']
        unique_together = ('nombre',)

    def download_link(self):
        return self.archivo.url

    def parametros(self):
        return ParametroReporte.objects.filter(reporte=self).order_by('id')

    def tiporeporte(self):
        tipos = ''
        if self.formatoxls:
            tipos += ',xls'
        if self.formatoword:
            tipos += ',doc'
        if self.formatopdf:
            tipos += ',pdf'
        if self.formatocsv:
            tipos += ',csv'
        return tipos

    def existe(self, nombrereporte):
        return Reporte.objects.filter(nombre=nombrereporte).exists()

    def save(self, *args, **kwargs):
        self.nombre = null_to_text(self.nombre, lower=True)
        self.descripcion = null_to_text(self.descripcion, cap=True)
        self.detalle = null_to_text(self.detalle, cap=True)
        super(Reporte, self).save(*args, **kwargs)


class ParametroReporte(ModeloBase):
    reporte = models.ForeignKey(Reporte, verbose_name=u'Reporte', on_delete=models.CASCADE)
    nombre = models.CharField(default='', max_length=100, verbose_name=u'Nombre')
    descripcion = models.CharField(default='', max_length=200, verbose_name=u'Descripción')
    tipo = models.IntegerField(choices=TIPOS_PARAMETRO_REPORTE, default=1, verbose_name=u'Tipo de parametro')
    extra = models.TextField(default='', verbose_name=u'Clase relacionada', blank=True)

    def __str__(self):
        return u'%s' % self.nombre

    class Meta:
        verbose_name_plural = u"Parametros de reportes"
        ordering = ['nombre']
        unique_together = ('reporte', 'nombre',)

    def save(self, *args, **kwargs):
        self.nombre = null_to_text(self.nombre, lower=True)
        self.descripcion = null_to_text(self.descripcion, cap=True)
        self.extra = null_to_text(self.extra, transform=False)
        super(ParametroReporte, self).save(*args, **kwargs)



# *******************************************************************************************************

ESTADOS_SOLICITUD_COMPROBANTE = (
    (1, u'PENDIENTE'),
    (2, u'PROCESADA')
)

class Pais(ModeloBase):
    nombre = models.CharField(default='', max_length=100, verbose_name=u"Nombre")
    codigosniese = models.CharField(max_length=15, default='', verbose_name=u'Codigo Sniese')

    def __str__(self):
        return u'%s' % self.nombre

    class Meta:
        verbose_name_plural = u"Paises"
        ordering = ['nombre']
        unique_together = ('nombre',)

    def save(self, *args, **kwargs):
        self.nombre = null_to_text(self.nombre)
        self.codigosniese = null_to_text(self.codigosniese)
        super(Pais, self).save(*args, **kwargs)


class Nacionalidad(ModeloBase):
    nombremasculino = models.CharField(default='', max_length=100, verbose_name=u"Nacionalidad Masculina")
    nombrefemenino = models.CharField(default='', max_length=100, verbose_name=u"Nacionalidad Femenina")
    nombre = models.CharField(default='', max_length=100, verbose_name=u"Nacionalidad")
    pais = models.ForeignKey(Pais, blank=True, null=True, verbose_name=u'País', on_delete=models.PROTECT)

    def __str__(self):
        return u'%s' % self.nombre

    class Meta:
        verbose_name_plural = u"Nacionalidades"
        ordering = ['nombre']
        unique_together = ('nombre',)

    def save(self, *args, **kwargs):
        self.nombrefemenino = null_to_text(self.nombrefemenino)
        self.nombremasculino = null_to_text(self.nombremasculino)
        self.nombre = null_to_text(self.nombre)
        super(Nacionalidad, self).save(*args, **kwargs)


class Provincia(ModeloBase):
    nombre = models.CharField(default='', max_length=100, verbose_name=u"Nombre")
    alias = models.CharField(default='', max_length=50, blank=True, verbose_name=u'Alias')
    codigosniese = models.CharField(max_length=15, default='', verbose_name=u'Codigo Sniese')
    codigoiso = models.CharField(max_length=10, default='', verbose_name=u'Codigo iso')

    def __str__(self):
        return u'%s' % self.nombre

    class Meta:
        verbose_name_plural = u"Provincias"
        ordering = ['nombre']
        unique_together = ('nombre',)

    def save(self, *args, **kwargs):
        self.nombre = null_to_text(self.nombre)
        self.codigosniese = null_to_text(self.codigosniese)
        super(Provincia, self).save(*args, **kwargs)


class Canton(ModeloBase):
    provincia = models.ForeignKey(Provincia, blank=True, null=True, verbose_name=u"Provincia", on_delete=models.PROTECT)
    nombre = models.CharField(default='', max_length=100, verbose_name=u"Nombre")
    codigosniese = models.CharField(max_length=15, default='', verbose_name=u'Codigo Sniese')

    def __str__(self):
        return u'%s' % self.nombre

    class Meta:
        verbose_name_plural = u"Cantones"
        ordering = ['nombre']

    def save(self, *args, **kwargs):
        self.nombre = null_to_text(self.nombre)
        self.codigosniese = null_to_text(self.codigosniese)
        super(Canton, self).save(*args, **kwargs)


class TipoParroquia(ModeloBase):
    nombre = models.CharField(default='', max_length=100, verbose_name=u"Nombre")

    def __str__(self):
        return u'%s' % self.nombre

    class Meta:
        verbose_name_plural = u"Tipo Parroquia"
        ordering = ['nombre']

    def save(self, *args, **kwargs):
        self.nombre = null_to_text(self.nombre)
        super(TipoParroquia, self).save(*args, **kwargs)


class Parroquia(ModeloBase):
    canton = models.ForeignKey(Canton, blank=True, null=True, verbose_name=u"Canton", on_delete=models.PROTECT)
    tipo = models.ForeignKey(TipoParroquia, blank=True, null=True, on_delete=models.PROTECT)
    nombre = models.CharField(default='', max_length=100, verbose_name=u"Nombre")

    def __str__(self):
        return u'%s' % self.nombre

    class Meta:
        verbose_name_plural = u"Parroquias"
        ordering = ['nombre']

    def save(self, *args, **kwargs):
        self.nombre = null_to_text(self.nombre)
        super(Parroquia, self).save(*args, **kwargs)


class Sexo(ModeloBase):
    nombre = models.CharField(default='', max_length=100, verbose_name=u'Nombre')

    def __str__(self):
        return u'%s' % self.nombre

    class Meta:
        verbose_name_plural = u"Sexos"
        unique_together = ('nombre',)

    def save(self, *args, **kwargs):
        self.nombre = null_to_text(self.nombre)
        super(Sexo, self).save(*args, **kwargs)


class Genero(ModeloBase):
    nombre = models.CharField(default='', max_length=100, verbose_name=u'Nombre')

    def __str__(self):
        return u'%s' % self.nombre

    class Meta:
        verbose_name_plural = u"Generos"
        unique_together = ('nombre',)

    def save(self, *args, **kwargs):
        self.nombre = null_to_text(self.nombre)
        super(Genero, self).save(*args, **kwargs)


class PersonaEstadoCivil(ModeloBase):
    nombre = models.CharField(max_length=50, verbose_name=u"Nombre")

    def __str__(self):
        return self.nombre

    class Meta:
        verbose_name_plural = u"Estados civiles"
        unique_together = ('nombre',)

    def save(self, *args, **kwargs):
        self.nombre = null_to_text(self.nombre)
        self.codigosniese = null_to_text(self.codigosniese)
        super(PersonaEstadoCivil, self).save(*args, **kwargs)


class TituloInstitucion(ModeloBase):
    nombre = models.CharField(default='', max_length=300, verbose_name=u'Nombre')
    telefono = models.CharField(default='', max_length=200, verbose_name=u'Teléfonos')
    correo = models.CharField(default='', max_length=200, verbose_name=u'Correo electrónico')
    web = models.CharField(default='', max_length=200, verbose_name=u'Web')
    provincia = models.ForeignKey(Provincia, blank=True, null=True, verbose_name=u"Provincia", on_delete=models.PROTECT)
    canton = models.ForeignKey(Canton, blank=True, null=True, verbose_name=u"Cantón", on_delete=models.PROTECT)
    parroquia = models.ForeignKey(Parroquia, blank=True, null=True, verbose_name=u"Parroquia", on_delete=models.PROTECT)
    sector = models.CharField(default='', max_length=100, verbose_name=u"Sector")
    ciudad = models.CharField(default='', max_length=50, verbose_name=u"Ciudad")
    direccion = models.CharField(default='', max_length=300, verbose_name=u'Dirección')
    ruc = models.CharField(default='', max_length=20, verbose_name=u"RUC")
    obligadocontabilidad = models.BooleanField(default=True, verbose_name=u"Obligado a llevar contabilidad")
    contribuyenteespecial = models.BooleanField(default=False, verbose_name=u"Contribuyente especial")
    facturacionelectronicaexterna = models.BooleanField(default=False,
                                                        verbose_name=u"Usa facturación electrónica externa")
    urlfacturacion = models.CharField(default='', max_length=100, verbose_name=u'url facturacion')
    emailhost = models.CharField(default='', max_length=100, verbose_name=u'Email host')
    emaildomain = models.CharField(default='', max_length=100, verbose_name=u'Dominio de correo institucional')
    domainapp = models.CharField(default='', max_length=100, verbose_name=u'Dominio aplicacion')
    emailport = models.IntegerField(default=0, verbose_name=u'Email port')
    emailhostuser = models.CharField(default='', max_length=100, verbose_name=u'Email host user')
    emailpassword = models.CharField(default='', max_length=100, verbose_name=u'Email password')
    enviosolocorreoinstitucional = models.BooleanField(default=False, verbose_name=u"Envío solo correo institucional")
    usatls = models.BooleanField(default=False, verbose_name=u"Envío solo correo institucional")
    defaultpassword = models.CharField(default='', max_length=100, verbose_name=u'Clave por defecto')
    claveusuariocedula = models.BooleanField(default=False, verbose_name=u"Cédula como clave de usuario")
    nombreusuariocedula = models.BooleanField(default=False, verbose_name=u"Cédula como clave de usuario")

    class Meta:
        verbose_name_plural = u"Institución"

    def __str__(self):
        return u'%s' % self.nombre

    def save(self, *args, **kwargs):
        self.nombre = null_to_text(self.nombre)
        self.telefono = null_to_text(self.telefono)
        self.direccion = null_to_text(self.direccion, cap=True)
        self.sector = null_to_text(self.sector)
        self.ciudad = null_to_text(self.ciudad)
        self.ruc = null_to_text(self.ruc)
        self.telefono = null_to_text(self.telefono)
        self.correo = null_to_text(self.correo, lower=True)
        self.web = null_to_text(self.web, lower=True)
        super(TituloInstitucion, self).save(*args, **kwargs)


def mi_institucion():
    return TituloInstitucion.objects.all()[0]

class Persona(ModeloBase):
    nombre1 = models.CharField(default='', max_length=50, verbose_name='1er Nombre')
    nombre2 = models.CharField(default='', max_length=50, verbose_name='2do Nombre')
    apellido1 = models.CharField(default='', max_length=50, verbose_name="1er Apellido")
    apellido2 = models.CharField(default='', max_length=50, verbose_name="2do Apellido")
    cedula = models.CharField(default='', max_length=13, verbose_name="Cedula")
    nacimiento = models.DateField(verbose_name="Fecha de nacimiento")
    sexo = models.ForeignKey('Sexo', verbose_name='Sexo', on_delete=models.PROTECT)
    genero = models.ForeignKey('Genero', blank=True, null=True, verbose_name='Genero', on_delete=models.PROTECT)
    pais = models.ForeignKey('Pais', blank=True, null=True, related_name='pais', verbose_name='País residencia',
                             on_delete=models.PROTECT)
    nacionalidad = models.ForeignKey(Nacionalidad, blank=True, null=True, verbose_name=u"Nacionalidad" , on_delete=models.PROTECT)
    provincia = models.ForeignKey('Provincia', blank=True, null=True, related_name='provincia',
                                  verbose_name="Provincia de residencia", on_delete=models.PROTECT)
    canton = models.ForeignKey('Canton', blank=True, null=True, related_name='canton',
                               verbose_name="Cantón de residencia", on_delete=models.PROTECT)
    parroquia = models.ForeignKey('Parroquia', blank=True, related_name='parroquia', null=True,
                                  verbose_name="Parroquia de residencia", on_delete=models.PROTECT)
    sector = models.CharField(default='', max_length=100, verbose_name="Sector de residencia")
    ciudad = models.CharField(default='', max_length=50, verbose_name="Ciudad de residencia")
    direccion = models.CharField(default='', max_length=100, verbose_name="Calle principal")
    referencia = models.CharField(default='', max_length=100, verbose_name="Referencia")
    num_direccion = models.CharField(default='', max_length=15, verbose_name="Numero de domicilio")
    celular = models.CharField(default='', max_length=50, verbose_name="Teléfono movil")
    telefono = models.CharField(default='', max_length=50, verbose_name="Teléfono")
    email = models.CharField(default='', max_length=200, verbose_name="Correo electrónico personal")
    estadocivil = models.ForeignKey('PersonaEstadoCivil', blank=True, null=True, verbose_name="Estado civil",
                                    on_delete=models.PROTECT)
    usuario = models.ForeignKey(User, null=True, verbose_name='Usuario', on_delete=models.PROTECT)
    activo = models.BooleanField(null=True, verbose_name='activo')

    class Meta:
        verbose_name_plural = 'Personas'

    def __str__(self):
        return '%s %s %s %s' % (self.apellido1, self.apellido2, self.nombre1, self.nombre2)

    def activo(self):
        return self.usuario.is_active

    def nombre_completo_simple(self):
        return u'%s %s' % (self.nombre1, self.apellido1[0] if self.apellido1 else "")

    def cambiar_clave(self):
        if self.cambioclavepersona_set.exists():
            cc = self.cambioclavepersona_set.all()[0]
        else:
            cc = CambioClavePersona(persona=self)
            cc.save()
        return cc

    def lista_identificaciones(self):
        data = []
        if self.cedula:
            data.append(self.cedula)
        return data

    def crear_perfil(self, administrativo=None, paciente=None, doctor=None,cliente=None):
        if paciente:
            perfil = PerfilUsuario(persona=self,
                                   paciente=paciente,
                                   tipoperfilusuario_id=PERFIL_PACIENTE_ID)
            perfil.save()
        elif administrativo:
            perfil = PerfilUsuario(persona=self,
                                   administrativo=administrativo,
                                   tipoperfilusuario_id=PERFIL_ADMINISTRATIVO_ID)
            perfil.save()
        elif doctor:
            perfil = PerfilUsuario(persona=self,
                                   doctor=doctor,
                                   tipoperfilusuario_id=PERFIL_DOCTOR_ID)
            perfil.save()
        elif cliente:
            perfil = PerfilUsuario(persona=self,
                                   cliente=cliente,
                                   tipoperfilusuario_id=PERFIL_CLIENTE_ID)
            perfil.save()

    def lista_perfiles(self):
        return TipoPerfilUsuario.objects.filter(perfilusuario__persona=self).distinct()


    def nombre_completo(self):
        return u'%s %s %s %s' % (self.nombre1, self.nombre2, self.apellido1, self.apellido2)

    def nombres(self):
        return u'%s %s' % (self.nombre1, self.nombre2)

    def nombre_completo_inverso(self):
        return u'%s %s %s %s' % (self.apellido1, self.apellido2, self.nombre1, self.nombre2)

    def nombre_completo_simple(self):
        return u'%s %s' % (self.nombre1, self.apellido1[0] if self.apellido1 else "")

    def nombres_completos(self):
        return u'%s %s' % (self.nombre1, self.nombre2 if self.nombre2 else "")

    def nombre_iniciales(self):
        return u"%s" % (self.nombre1[:3])

    def grupos(self):
        return self.usuario.groups.all().distinct()

    def telefonos(self):
        data = []
        if self.celular:
            data.append(self.celular)
        if self.telefono:
            data.append(self.telefono)
        return data

    def es_paciente(self):
        return self.perfilusuario_set.filter(paciente__isnull=False).exists()

    def es_administrativo(self):
        return self.perfilusuario_set.filter(administrativo__isnull=False).exists()

    def es_doctor(self):
        return self.perfilusuario_set.filter(profesor__isnull=False).exists()

    def es_cliente(self):
        return self.perfilusuario_set.filter(cliente__isnull=False).exists()

    def perfilusuario_principal(self):
        if self.perfilusuario_set.filter(doctor__isnull=False, doctor__activo=True).exists():
            return self.perfilusuario_set.filter(doctor__isnull=False, doctor__activo=True)[0]
        elif self.perfilusuario_set.filter(administrativo__isnull=False, administrativo__activo=True).exists():
            return self.perfilusuario_set.filter(administrativo__isnull=False, administrativo__activo=True)[0]
        elif self.perfilusuario_set.filter(cliente__isnull=False, cliente__activo=True).exists():
            return self.perfilusuario_set.filter(cliente__isnull=False, cliente__activo=True)[0]
        elif self.perfilusuario_set.filter(paciente__isnull=False, paciente__activo=True).exists():
            return self.perfilusuario_set.filter(paciente__isnull=False, paciente__activo=True).order_by('-pacienteprincipal')[0]
        return None

    def mis_perfilesusuarios(self):
        return self.perfilusuario_set.all()

    def necesita_cambiar_clave(self):
        return self.cambioclavepersona_set.filter(solicitada=False).exists()

class CambioClavePersona(ModeloBase):
    persona = models.ForeignKey(Persona, verbose_name=u'Persona',on_delete=models.PROTECT)
    clavecambio = models.CharField(default='', max_length=50, verbose_name=u'Cambio de clave')
    solicitada = models.BooleanField(default=False, verbose_name=u'Solicitada')

    class Meta:
        unique_together = ('persona',)


class Prueba(ModeloBase):
    nombre1 = models.CharField(default='', max_length=50, verbose_name='1er Nombre')
    apellido1 = models.CharField(default='', max_length=50, verbose_name="1er Apellido")
    nacimiento = models.DateField(verbose_name="Fecha de nacimiento")
    sexo = models.ForeignKey(Sexo, verbose_name='Sexo', on_delete=models.CASCADE)

    class Meta:
        verbose_name_plural = 'Prueba'

    def __str__(self):
        return '%s %s' % (self.apellido1, self.nombre1)

class Administrativo(ModeloBase):
    persona = models.ForeignKey(Persona, verbose_name=u"Persona",on_delete=models.PROTECT)
    activo = models.BooleanField(default=True, verbose_name=u"Activo")

    def __str__(self):
        return u'%s' % self.persona

    @staticmethod
    def flexbox_query(q, filtro=None, exclude=None, cantidad=None):
        if len(q.split(' ')) == 2:
            qq = q.split(' ')
            return eval(("Administrativo.objects.filter(persona__apellido1__contains='%s', persona__apellido2__contains='%s')" % (qq[0], qq[1])) + (".filter(%s)" % filtro if filtro else "") + (".exclude(%s)" % exclude if exclude else "") + (".distinct()") + ("[:%s]" % cantidad if cantidad else ""))
        return eval(("Administrativo.objects.filter(Q(persona__nombre1__contains='%s') | Q(persona__nombre2__contains='%s') | Q(persona__apellido1__contains='%s') | Q(persona__apellido2__contains='%s') | Q(persona__cedula__contains='%s') | Q(id=id_search('%s')))" % (q, q, q, q, q, q)) + (".filter(%s)" % filtro if filtro else "") + (".exclude(%s)" % exclude if exclude else "") + (".distinct()") + ("[:%s]" % cantidad if cantidad else ""))

    def flexbox_repr(self):
        return (self.persona.cedula if self.persona.cedula else self.persona.pasaporte) + " - " + self.persona.nombre_completo() + ' - ' + str(self.id)

    class Meta:
        verbose_name_plural = u"Administrativos"
        ordering = ['persona']
        unique_together = ('persona',)

class TipoPerfilUsuario(ModeloBase):
    nombre = models.CharField(max_length=300, verbose_name=u'Nombre')

    def __str__(self):
        return u'%s ' % (self.nombre)

    def save(self, *args, **kwargs):
        self.nombre = null_to_text(self.nombre)
        super(TipoPerfilUsuario, self).save(*args, **kwargs)

class CategorizacionDoctor(ModeloBase):
    nombre = models.CharField(default='', max_length=100, verbose_name=u'Nombre')
    codigosniese = models.CharField(max_length=15, default='', verbose_name=u'Codigo Sniese')

    def __str__(self):
        return u'%s' % self.nombre

    class Meta:
        verbose_name_plural = u" Categorizaciones de doctores"
        ordering = ['nombre']
        unique_together = ('nombre',)

    def save(self, *args, **kwargs):
        self.nombre = null_to_text(self.nombre)
        self.codigosniese = null_to_text(self.codigosniese)
        super(CategorizacionDoctor, self).save(*args, **kwargs)

class CargoDoctor(ModeloBase):
    nombre = models.CharField(default='', max_length=100, verbose_name=u'Nombre')

    def __str__(self):
        return u'%s' % self.nombre

    class Meta:
        verbose_name_plural = u" Cargos docentes"
        ordering = ['nombre']
        unique_together = ('nombre',)

    def save(self, *args, **kwargs):
        self.nombre = null_to_text(self.nombre)
        super(CargoDoctor, self).save(*args, **kwargs)

class GradoOcupacional(ModeloBase):
    nombre = models.CharField(default='', max_length=100, verbose_name=u'Nombre')

    def __str__(self):
        return u'%s' % self.nombre

    class Meta:
        verbose_name_plural = u"Grado Ocupacional"
        ordering = ['nombre']
        unique_together = ('nombre',)

    def save(self, *args, **kwargs):
        self.nombre = null_to_text(self.nombre)
        super(GradoOcupacional, self).save(*args, **kwargs)

class Doctor(ModeloBase):
    persona = models.ForeignKey(Persona, verbose_name=u"Persona",on_delete=models.CASCADE)
    fechainiciodocente = models.DateField(verbose_name=u'Fecha inicio actividades como docente')
    categoria = models.ForeignKey(CategorizacionDoctor, null=True, blank=True, verbose_name=u"Categoria",on_delete=models.CASCADE)
    cargo = models.ForeignKey(CargoDoctor, null=True, blank=True, verbose_name=u"Cargo",on_delete=models.CASCADE)
    gradoocupacional = models.ForeignKey(GradoOcupacional, null=True, blank=True, verbose_name=u"Grado Ocupacional",on_delete=models.CASCADE)
    activo = models.BooleanField(default=True, verbose_name=u"Activo")
    salario = models.FloatField(default=0, verbose_name=u'Salario')
    dependencia = models.BooleanField(default=False, verbose_name=u"Relación Dependencia")

    def __str__(self):
        return u'%s' % self.persona

    class Meta:
        verbose_name_plural = u"Doctores"
        ordering = ['persona__apellido1', 'persona__apellido2', 'persona__nombre1', 'persona__nombre2']
        unique_together = ('persona',)

    @staticmethod
    def flexbox_query(q, filtro=None, exclude=None, cantidad=None):
        if len(q.split(' ')) == 2:
            qq = q.split(' ')
            return eval(("Profesor.objects.filter(persona__apellido1__contains='%s', persona__apellido2__contains='%s')" % (qq[0], qq[1])) + (".filter(%s)" % filtro if filtro else "") + (".exclude(%s)" % exclude if exclude else "") + (".distinct()") + ("[:%s]" % cantidad if cantidad else ""))
        return eval(("Profesor.objects.filter(Q(persona__nombre1__contains='%s') | Q(persona__nombre2__contains='%s') | Q(persona__apellido1__contains='%s') | Q(persona__apellido2__contains='%s') | Q(persona__cedula__contains='%s') | Q(id=id_search('%s')))" % (q, q, q, q, q, q)) + (".filter(%s)" % filtro if filtro else "") + (".exclude(%s)" % exclude if exclude else "") + (".distinct()") + ("[:%s]" % cantidad if cantidad else ""))

    def flexbox_repr(self):
        return (self.persona.cedula) + " - " + self.persona.nombre_completo() + ' - ' + str(self.id)

class Paciente(ModeloBase):
    persona = models.ForeignKey(Persona, verbose_name=u'Persona',on_delete=models.CASCADE)
    fechaingreso = models.DateField(verbose_name=u'Fecha de ingreso')
    horaingreso = models.TimeField(verbose_name=u'Hora de ingreso')
    activo = models.BooleanField(default=True, verbose_name=u"Activo")
    personaingreso = models.ForeignKey(Persona, related_name='persona_inscribe', verbose_name=u'Persona quien ingreso',on_delete=models.CASCADE)

    def __str__(self):
        return u'%s - %s' % (self.persona, self.id)

    class Meta:
        verbose_name_plural = u"Ingreso Pacientes"
        ordering = ["persona", '-fechaingreso']

    @staticmethod
    def flexbox_query(q, filtro=None, exclude=None, cantidad=None):
        if len(q.split(' ')) == 2:
            qq = q.split(' ')
            return eval(("Paciente.objects.filter(persona__apellido1__contains='%s', persona__apellido2__contains='%s')" % (qq[0], qq[1])) + (".filter(%s)" % filtro if filtro else "") + (".exclude(%s)" % exclude if exclude else "") + (".distinct()") + ("[:%s]" % cantidad if cantidad else ""))
        return eval(("Paciente.objects.filter(Q(persona__nombre1__contains='%s') | Q(persona__nombre2__contains='%s') | Q(persona__apellido1__contains='%s') | Q(persona__apellido2__contains='%s') | Q(persona__cedula__contains='%s') | Q(id=id_search('%s')))" % (q, q, q, q, q, q)) + (".filter(%s)" % filtro if filtro else "") + (".exclude(%s)" % exclude if exclude else "") + (".distinct()") + ("[:%s]" % cantidad if cantidad else ""))

    def flexbox_repr(self):
        return (self.persona.cedula) + " - " + self.persona.nombre_completo_inverso()

    def flexbox_reprpago(self):
        return (self.persona.cedula ) + " - " + self.persona.nombre_completo_inverso()

class PerfilUsuario(ModeloBase):
    persona = models.ForeignKey(Persona,on_delete=models.CASCADE)
    tipoperfilusuario = models.ForeignKey(TipoPerfilUsuario, blank=True, null=True, verbose_name=u'Tipo Perfil Usuario',on_delete=models.PROTECT)
    administrativo = models.ForeignKey(Administrativo, blank=True, null=True, verbose_name=u'Administrativo',on_delete=models.PROTECT)
    doctor = models.ForeignKey(Doctor, blank=True, null=True, verbose_name=u'Doctor',on_delete=models.PROTECT)
    paciente = models.ForeignKey(Paciente, blank=True, null=True, verbose_name=u'Pacientes',on_delete=models.PROTECT)
    pacienteprincipal = models.BooleanField(default=False, verbose_name=u'Paciente principal')

    def __str__(self):
        if self.es_paciente():
            return "PACIENTE"
        elif self.es_doctor():
            return "DOCTOR"
        elif self.es_administrativo():
            return "ADMINISTRATIVO"

    class Meta:
        ordering = ['persona']
        unique_together = ('persona',)

    def es_paciente(self):
        return self.paciente is not None

    def es_doctor(self):
        return self.doctor is not None

    def es_administrativo(self):
        return self.administrativo is not None

    def establecer_paciente_principal(self):
        if self.es_paciente():
            PerfilUsuario.objects.filter(persona=self.persona, paciente__isnull=False).update(pacienteprincipal=False)
            self.pacienteprincipal = True
            self.save()

    def activo(self):
        if self.es_paciente():
            return self.paciente.activo
        elif self.es_doctor():
            return self.doctor.activo
        elif self.es_administrativo():
            return self.administrativo.activo
        return False

    def tipo(self):
        if self.es_paciente():
            return self.paciente.persona
        elif self.es_administrativo():
            return "ADMINISTRATIVO"
        elif self.es_doctor():
            return "PROFESOR"
        else:
            return "NO DEFINIDO"


class TipoDocumento(ModeloBase):
    nombre = models.CharField(default='', max_length=100, verbose_name=u'Tipo Documento')

    def __str__(self):
        return u'%s' % self.nombre

class Cliente(ModeloBase):
    tipodocumento = models.ForeignKey(TipoDocumento, verbose_name='Tipo Documento', on_delete=models.PROTECT)
    numeroidentificacion = models.CharField(default='', max_length=13, verbose_name="Numero Identificacion")
    nombres = models.CharField(default='', max_length=100, verbose_name='1er Nombre')
    apellidos = models.CharField(default='', max_length=100, verbose_name="1er Apellido")
    nombrecomercial = models.CharField(default='', max_length=100, verbose_name="Nombre Comercial")
    direccion = models.CharField(default='', max_length=100, verbose_name="Dirección")
    email = models.CharField(default='', max_length=200, verbose_name="Correo electrónico personal")
    telefono = models.CharField(default='', max_length=25, verbose_name="Teléfono")
    usuario = models.ForeignKey(User, null=True, verbose_name='Usuario', on_delete=models.PROTECT)
    activo = models.BooleanField(null=True, verbose_name='activo')

    def __str__(self):
        return '%s %s' % (self.apellidos, self.nombres)


    def flexbox_repr(self):
        return (self.numeroidentificacion+" - "+ self.nombre_completo() + ' - ' + str(self.id))

    class Meta:
        verbose_name_plural = u"Cliente"
        ordering = ['apellidos']

    def activo(self):
        return self.usuario.is_active

    def nombre_completo(self):
        return '%s %s' % (self.apellidos, self.nombres)


class TipoProducto(ModeloBase):
    codigo = models.CharField(default='', max_length=100, verbose_name=u'Codigo Tipo Producto')
    nombre = models.CharField(default='', max_length=100, verbose_name=u'Nombre Tipo Producto')

    def __str__(self):
        return u'%s - %s' % (self.nombre, self.codigo)


class Producto(ModeloBase):
    codigo=models.CharField(default='',  max_length=100, verbose_name=u'Codigo')
    nombre = models.CharField(default='',  max_length=100, verbose_name=u'Nombre')
    descripcion = models.CharField(default='',null=True, max_length=100, verbose_name=u'Descripción')
    tipo=models.ForeignKey(TipoProducto,verbose_name=u'Tipo producto',on_delete=models.PROTECT)
    stock = models.CharField(default='', max_length=100, verbose_name=u'Nombre')
    preciocompra = models.FloatField(default=0, verbose_name=u'Precio Compra')
    precioventa = models.FloatField(default=0, verbose_name=u'Precio Venta')
    imagen = models.FileField(upload_to='imagenproducto/%Y/%m/%d', verbose_name=u'Imagen Producto', null=True)

    def __str__(self):
        return u'%s' % (self.nombre)

    def tiene_foto(self):
        return self.imagen

class Factura(ModeloBase):
    numero = models.CharField(default='', max_length=20, verbose_name=u"Numero")
    numeroreal = models.IntegerField(default=0, verbose_name=u"Numero")
    fecha = models.DateField(verbose_name=u"Fecha")
    valida = models.BooleanField(default=True, verbose_name=u"Valida")
    impresa = models.BooleanField(default=False, verbose_name=u"Impresa")
    tipo = models.ForeignKey(TipoDocumento, default=1, null=False, verbose_name=u"Tipo de identificación",on_delete=models.PROTECT)
    cliente = models.ForeignKey(Cliente, null=False, blank=True, verbose_name=u'Cliente',on_delete=models.PROTECT)
    electronica = models.BooleanField(default=False, verbose_name=u"Electrónica")
    weburl = models.CharField(default='', null=True, blank=True, max_length=200, verbose_name=u"Web url")
    claveacceso = models.CharField(default='', null=True, blank=True, max_length=200, verbose_name=u"Clave de acceso")
    tipoambiente = models.IntegerField(default=0, verbose_name=u"Tipo ambiente")
    tipoemision = models.IntegerField(default=0, verbose_name=u"Tipo emision")
    basecero = models.FloatField(default=0, verbose_name=u"Base cero")
    baseiva = models.FloatField(default=0, verbose_name=u"Base iva")
    subtotal = models.FloatField(default=0, verbose_name=u"Subtotal")
    descuento = models.FloatField(default=0, verbose_name=u"Descuento")
    iva = models.FloatField(default=0, verbose_name=u"IVA")
    total = models.FloatField(default=0, verbose_name=u"Total")
    contabilizada = models.BooleanField(default=False, verbose_name=u"Contabilizada")
    firmada = models.BooleanField(default=False, verbose_name=u"Firmada")
    enviadasri = models.BooleanField(default=False, verbose_name=u"Enviada SRI")
    falloenviodasri = models.BooleanField(default=False, verbose_name=u"Fallo de Envio SRI")
    mensajeenvio = models.TextField(blank=True, null=True, verbose_name=u"Mensaje de Envio SRI")
    falloautorizacionsri = models.BooleanField(default=False, verbose_name=u"Fallo de Autorización SRI")
    mensajeautorizacion = models.TextField(blank=True, null=True, verbose_name=u"Mensaje de Autorización")
    autorizada = models.BooleanField(default=False, verbose_name=u"Autorizada")
    enviadacliente = models.BooleanField(default=False, verbose_name=u"Enviada por correo")
    xmlgenerado = models.BooleanField(default=False, verbose_name=u"XML Generado")
    xml = models.TextField(blank=True, null=True, verbose_name=u'XML')
    xmlfirmado = models.TextField(blank=True, null=True, verbose_name=u'XML Firmado')
    xmlarchivo = models.FileField(upload_to='comprobantes/facturas/', blank=True, null=True, verbose_name=u'XML Archivo')
    pdfarchivo = models.FileField(upload_to='comprobantes/facturas/', blank=True, null=True, verbose_name=u'XML Archivo')
    fechaautorizacion = models.DateTimeField(verbose_name=u"Fecha autorizacion", blank=True, null=True)
    autorizacion = models.TextField(default='', verbose_name=u'Autorizacion', blank=True, null=True)
    pagada = models.BooleanField(default=True, verbose_name=u"Pagada")
    estado = models.IntegerField(choices=ESTADOS_SOLICITUD_COMPROBANTE, default=1)
    cajero = models.ForeignKey(Persona, null=False, blank=True, verbose_name=u'Cajero',on_delete=models.PROTECT)


    def __str__(self):
        return u'%s' % self.numero

    class Meta:
        verbose_name_plural = u"Facturas"
        ordering = ['numero']
        unique_together = ('numero', 'electronica')

    def enletras(self):
        return enletras(self.total)

    def direccioncorta(self):
        return self.direccion[0:35]

    def direccioncorta2(self):
        return self.direccion[35:]

    # def establecimiento(self):
    #     if PuntoVenta.objects.filter(establecimiento=self.numero.split('-')[0], puntoventa=self.numero.split('-')[1]).exists():
    #         return PuntoVenta.objects.filter(establecimiento=self.numero.split('-')[0], puntoventa=self.numero.split('-')[1])[0]
    #     return None


    def puede_reimprimirse(self):
        return self.fecha == datetime.now().date()

    def anulada(self):
        if FacturaCancelada.objects.filter(factura=self).exists():
            return FacturaCancelada.objects.filter(factura=self)[0]
        return None

    def descuentos(self):
        return null_to_numeric(self.pagos.aggregate(descuento=Sum('descuento'))['descuento'], 2)

    def tipo_identificacion(self):
        if self.tipo == 1:
            return "CEDULA"
        elif self.tipo == 2:
            return "RUC"
        elif self.tipo == 3:
            return "PASAPORTE"
        else:
            return "IDENTIFICACIÓN DEL EXTERIOR"

    def tipo_identificacion_facturaconelectronica(self):
        if self.tipo == 1:
            return "05"
        elif self.tipo == 2:
            return "04"
        elif self.tipo == 3:
            return "06"
        else:
            return "06"

    def actualizarsubtotales(self):
        self.basecero = 0
        self.baseiva = 0
        valortotal = 0
        valoriva = 0
        for pago in self.pagos.all():
            if pago.iva > 0:
                self.baseiva += null_to_numeric(pago.valor - pago.iva, 2)
            else:
                self.basecero += (pago.valor + pago.descuento)
            valortotal += pago.valor
            valoriva += pago.iva
        self.basecero = null_to_numeric(self.basecero, 2)
        self.baseiva = null_to_numeric(self.baseiva, 2)
        self.descuento = self.descuentos()
        self.iva = null_to_numeric(valoriva, 2)
        self.subtotal = null_to_numeric(self.basecero + self.baseiva, 2)
        self.total = null_to_numeric(valortotal, 2)
        self.save()

    def total_efectivo(self):
        return null_to_numeric(self.pagos.filter(efectivo=True).aggregate(valor=Sum('valor'))['valor'], 2)

    def genera_clave_acceso_factura(self):
        hoy = self.fecha
        numero = self.numeroreal
        return self.generar_clave_acceso(hoy, numero, '01')

    def generar_clave_acceso(self, fecha, numero, codigo):
        institucion = mi_institucion()
        hoy = fecha
        # puntoventa = 'JD Sistemas - 01'
        codigoestablecimiento = 'JD Sistemas'
        codigopuntoemision = '01'
        codigonumerico = str(Decimal('%02d%02d%04d' % (hoy.day, hoy.month, hoy.year)) + Decimal(institucion.ruc) + Decimal('%3s%3s%9s' % (codigoestablecimiento, codigopuntoemision, str(numero).zfill(9))))[:8]
        parcial = "%02d%02d%04d%2s%13s%1d%3s%3s%9s%8s%1d" % (hoy.day, hoy.month, hoy.year, codigo, institucion.ruc,
                                                             self.tipoambiente, codigoestablecimiento,
                                                             codigopuntoemision, str(numero).zfill(9),
                                                             codigonumerico, self.tipoemision)
        digitoverificador = self.generar_digito_verificador(parcial)
        return parcial + str(digitoverificador)

    def generar_digito_verificador(self, cadena):
        basemultiplicador = 7
        aux = [0] * len(cadena)
        multiplicador = 2
        total = 0
        for i in range(len(cadena) - 1, -1, -1):
            aux[i] = int(cadena[i]) * multiplicador
            multiplicador += 1
            if multiplicador > basemultiplicador:
                multiplicador = 2
            total += aux[i]
        if total == 0 or total == 1:
            verificador = 0
        else:
            verificador = 0 if (11 - (total % 11)) == 11 else 11 - (total % 11)
        if verificador == 10:
            verificador = 1
        return verificador

    def extra_delete(self):
        return [False, False]

    def save(self, *args, **kwargs):
        self.numero = null_to_text(self.numero)
        self.identificacion = null_to_text(self.identificacion) if self.identificacion else '9999999999'
        self.direccion = null_to_text(self.direccion)
        self.nombre = null_to_text(self.nombre)
        self.telefono = null_to_text(self.telefono)
        self.weburl = null_to_text(self.weburl)
        self.claveacceso = null_to_text(self.claveacceso)
        super(Factura, self).save(*args, **kwargs)

class FacturaCancelada(ModeloBase):
    factura = models.ForeignKey(Factura, verbose_name=u'Factura',null=False,on_delete=models.PROTECT)
    motivo = models.CharField(default='', max_length=200, verbose_name=u'Motivo')
    fecha = models.DateField(verbose_name=u'Fecha')

    def __unicode__(self):
        return u'Factura cancelada No.%s %s' % (self.factura, self.fecha.strftime("%d-%m-%Y"))

    class Meta:
        verbose_name_plural = u"Facturas canceladas"
        unique_together = ('factura',)

    def save(self, *args, **kwargs):
        self.motivo = null_to_text(self.motivo)
        super(FacturaCancelada, self).save(*args, **kwargs)

class DetalleFactura(ModeloBase):
    factura = models.ForeignKey(Factura, null=False, blank=True, verbose_name=u'Factura',on_delete=models.PROTECT)
    producto = models.ForeignKey(Producto, null=False, blank=True, verbose_name=u'Producto',on_delete=models.PROTECT)
    cantidad = models.IntegerField(default=0, verbose_name=u"Cantidad")
    total = models.FloatField(default=0, verbose_name=u"Total")

    def __str__(self):
        return u'%s' % self.numero

    def calcular_producto(self):
        total=self.producto.precioventa*self.cantidad
        return total
