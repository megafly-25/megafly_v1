# Generated by Django 2.2.6 on 2020-03-09 13:58

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('main', '0004_auto_20200309_0840'),
    ]

    operations = [
        migrations.AlterField(
            model_name='mega_juego',
            name='slug',
            field=models.SlugField(blank=True, null=True),
        ),
    ]
