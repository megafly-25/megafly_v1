# Generated by Django 2.2.6 on 2020-03-09 22:48

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('main', '0009_auto_20200309_1744'),
    ]

    operations = [
        migrations.AlterField(
            model_name='mega_juego',
            name='enlace_publi',
            field=models.CharField(blank=True, max_length=1500, verbose_name='Enlace con Publicidad'),
        ),
        migrations.AlterField(
            model_name='mega_juego',
            name='enlacegd',
            field=models.CharField(blank=True, max_length=1500, verbose_name='Enlace Google Drive'),
        ),
        migrations.AlterField(
            model_name='mega_juego',
            name='enlacemg',
            field=models.CharField(blank=True, max_length=1500, verbose_name='Enlace Mega'),
        ),
    ]
