# Generated by Django 4.2.4 on 2023-08-09 22:07

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
        ('jdsistemas', '0008_cliente_tipodocumento'),
    ]

    operations = [
        migrations.CreateModel(
            name='Factura',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('fecha_creacion', models.DateTimeField(blank=True, null=True)),
                ('fecha_modificacion', models.DateTimeField(blank=True, null=True)),
                ('numero', models.CharField(default='', max_length=20, verbose_name='Numero')),
                ('numeroreal', models.IntegerField(default=0, verbose_name='Numero')),
                ('fecha', models.DateField(verbose_name='Fecha')),
                ('valida', models.BooleanField(default=True, verbose_name='Valida')),
                ('impresa', models.BooleanField(default=False, verbose_name='Impresa')),
                ('electronica', models.BooleanField(default=False, verbose_name='Electrónica')),
                ('weburl', models.CharField(blank=True, default='', max_length=200, null=True, verbose_name='Web url')),
                ('claveacceso', models.CharField(blank=True, default='', max_length=200, null=True, verbose_name='Clave de acceso')),
                ('tipoambiente', models.IntegerField(default=0, verbose_name='Tipo ambiente')),
                ('tipoemision', models.IntegerField(default=0, verbose_name='Tipo emision')),
                ('basecero', models.FloatField(default=0, verbose_name='Base cero')),
                ('baseiva', models.FloatField(default=0, verbose_name='Base iva')),
                ('subtotal', models.FloatField(default=0, verbose_name='Subtotal')),
                ('descuento', models.FloatField(default=0, verbose_name='Descuento')),
                ('iva', models.FloatField(default=0, verbose_name='IVA')),
                ('total', models.FloatField(default=0, verbose_name='Total')),
                ('contabilizada', models.BooleanField(default=False, verbose_name='Contabilizada')),
                ('firmada', models.BooleanField(default=False, verbose_name='Firmada')),
                ('enviadasri', models.BooleanField(default=False, verbose_name='Enviada SRI')),
                ('falloenviodasri', models.BooleanField(default=False, verbose_name='Fallo de Envio SRI')),
                ('mensajeenvio', models.TextField(blank=True, null=True, verbose_name='Mensaje de Envio SRI')),
                ('falloautorizacionsri', models.BooleanField(default=False, verbose_name='Fallo de Autorización SRI')),
                ('mensajeautorizacion', models.TextField(blank=True, null=True, verbose_name='Mensaje de Autorización')),
                ('autorizada', models.BooleanField(default=False, verbose_name='Autorizada')),
                ('enviadacliente', models.BooleanField(default=False, verbose_name='Enviada por correo')),
                ('xmlgenerado', models.BooleanField(default=False, verbose_name='XML Generado')),
                ('xml', models.TextField(blank=True, null=True, verbose_name='XML')),
                ('xmlfirmado', models.TextField(blank=True, null=True, verbose_name='XML Firmado')),
                ('xmlarchivo', models.FileField(blank=True, null=True, upload_to='comprobantes/facturas/', verbose_name='XML Archivo')),
                ('pdfarchivo', models.FileField(blank=True, null=True, upload_to='comprobantes/facturas/', verbose_name='XML Archivo')),
                ('fechaautorizacion', models.DateTimeField(blank=True, null=True, verbose_name='Fecha autorizacion')),
                ('autorizacion', models.TextField(blank=True, default='', null=True, verbose_name='Autorizacion')),
                ('pagada', models.BooleanField(default=True, verbose_name='Pagada')),
                ('estado', models.IntegerField(choices=[(1, 'PENDIENTE'), (2, 'PROCESADA')], default=1)),
                ('cajero', models.ForeignKey(blank=True, on_delete=django.db.models.deletion.PROTECT, to='jdsistemas.persona', verbose_name='Cajero')),
                ('cliente', models.ForeignKey(blank=True, on_delete=django.db.models.deletion.PROTECT, to='jdsistemas.cliente', verbose_name='Cliente')),
                ('tipo', models.ForeignKey(default=1, on_delete=django.db.models.deletion.PROTECT, to='jdsistemas.tipodocumento', verbose_name='Tipo de identificación')),
                ('usuario_creacion', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.PROTECT, related_name='+', to=settings.AUTH_USER_MODEL)),
                ('usuario_modificacion', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.PROTECT, related_name='+', to=settings.AUTH_USER_MODEL)),
            ],
            options={
                'verbose_name_plural': 'Facturas',
                'ordering': ['numero'],
                'unique_together': {('numero', 'electronica')},
            },
        ),
        migrations.CreateModel(
            name='DetalleFactura',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('fecha_creacion', models.DateTimeField(blank=True, null=True)),
                ('fecha_modificacion', models.DateTimeField(blank=True, null=True)),
                ('cantidad', models.IntegerField(default=0, verbose_name='Cantidad')),
                ('total', models.FloatField(default=0, verbose_name='Total')),
                ('factura', models.ForeignKey(blank=True, on_delete=django.db.models.deletion.PROTECT, to='jdsistemas.factura', verbose_name='Factura')),
                ('producto', models.ForeignKey(blank=True, on_delete=django.db.models.deletion.PROTECT, to='jdsistemas.producto', verbose_name='Producto')),
                ('usuario_creacion', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.PROTECT, related_name='+', to=settings.AUTH_USER_MODEL)),
                ('usuario_modificacion', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.PROTECT, related_name='+', to=settings.AUTH_USER_MODEL)),
            ],
            options={
                'abstract': False,
            },
        ),
        migrations.CreateModel(
            name='FacturaCancelada',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('fecha_creacion', models.DateTimeField(blank=True, null=True)),
                ('fecha_modificacion', models.DateTimeField(blank=True, null=True)),
                ('motivo', models.CharField(default='', max_length=200, verbose_name='Motivo')),
                ('fecha', models.DateField(verbose_name='Fecha')),
                ('factura', models.ForeignKey(on_delete=django.db.models.deletion.PROTECT, to='jdsistemas.factura', verbose_name='Factura')),
                ('usuario_creacion', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.PROTECT, related_name='+', to=settings.AUTH_USER_MODEL)),
                ('usuario_modificacion', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.PROTECT, related_name='+', to=settings.AUTH_USER_MODEL)),
            ],
            options={
                'verbose_name_plural': 'Facturas canceladas',
                'unique_together': {('factura',)},
            },
        ),
    ]
