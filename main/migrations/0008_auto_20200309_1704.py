# Generated by Django 2.2.6 on 2020-03-09 22:04

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('main', '0007_remove_mega_juego_cat_check'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='mega_juego',
            name='categoria_pro',
        ),
        migrations.AddField(
            model_name='mega_juego',
            name='categoria_pro',
            field=models.ManyToManyField(null=True, to='main.cate_Jueg', verbose_name='Categoria Producto'),
        ),
    ]
