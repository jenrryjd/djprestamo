# Generated by Django 4.2.4 on 2023-08-04 16:33

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('jdsistemas', '0007_alter_cliente_options_alter_cliente_unique_together_and_more'),
    ]

    operations = [
        migrations.AddField(
            model_name='cliente',
            name='tipodocumento',
            field=models.ForeignKey(default=1, on_delete=django.db.models.deletion.PROTECT, to='jdsistemas.tipodocumento', verbose_name='Tipo Documento'),
            preserve_default=False,
        ),
    ]