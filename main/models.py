from datetime import date, datetime

from django.db import models
from django.db.models.signals import pre_save
from django.utils.text import slugify
from django_matplotlib import MatplotlibFigureField
from django.urls import reverse
# Create your models here.
class User(models.Model):
    nombre=models.CharField(max_length=100)
    apellido=models.CharField(max_length=100)
    edad=models.IntegerField()
    imagen=models.ImageField()
    
    def __str__(self):
        return self.nombre

class MyModel(models.Model):
    figure=MatplotlibFigureField(figure='my_figure')

class cate_Jueg(models.Model):
    nombre=models.CharField(max_length=100)
    def __str__(self):
        return self.nombre

class cate_serv(models.Model):
    nombre=models.CharField(max_length=100)
    def __str__(self):
        return self.nombre
class mega_juego(models.Model):
        nombre=models.CharField(max_length=150,verbose_name="Nombre")
        nom_abre=models.CharField(max_length=100,verbose_name="Nombre Abreviado")
        fecha_registro=models.DateField(verbose_name="Fecha Registro")
        descripcion=models.CharField(max_length=500,verbose_name="Descripcion")
        descri_abre=models.CharField(max_length=100,verbose_name="Descripcion Abreviada")
        enlacegd=models.CharField(max_length=250,blank=True,verbose_name="Enlace Google Drive")
        enlacegd2=models.CharField(max_length=250,blank=True,verbose_name="Enlace Google Drive 2")
        enlacegd3=models.CharField(max_length=250,blank=True,verbose_name="Enlace Google Drive 3")
        enlacemg=models.CharField(max_length=250,blank=True,verbose_name="Enlace Mega ")
        enlacemg2=models.CharField(max_length=250,blank=True,verbose_name="Enlace Mega 2")
        enlacemg3=models.CharField(max_length=250,blank=True,verbose_name="Enlace Mega 3")
        enlace_publi=models.CharField(max_length=250,blank=True,verbose_name="Enlace con Publicidad Google Drive 1")
        enlace_publi2=models.CharField(max_length=250,blank=True,verbose_name="Enlace con Publicidad Google Drive 2")
        enlace_publi3=models.CharField(max_length=250,blank=True,verbose_name="Enlace con Publicidad Google Drive 3")
        enlace_publimg=models.CharField(max_length=250,blank=True,verbose_name="Enlace con Publicidad Mega 1")
        enlace_publimg2=models.CharField(max_length=250,blank=True,verbose_name="Enlace con Publicidad Mega 2")
        enlace_publimg3=models.CharField(max_length=250,blank=True,verbose_name="Enlace con Publicidad Mega 3")
        categoria_pro=models.ManyToManyField(cate_Jueg,verbose_name="Categoria Producto")
        slug=models.SlugField()
        imagen=models.ImageField()
        imagen2=models.ImageField()
        imagen3=models.ImageField()
        def __str__(self):
            return self.nombre
def slug_generator(sender,instance,*args,**kwargs):
    if instance.slug:
        return
    instance.slug=slugify(instance.nombre)
pre_save.connect(slug_generator,sender=mega_juego)
             
class servi_juego(models.Model):
    nombre=models.CharField(max_length=150)
    nom_abre=models.CharField(max_length=100)
    fecha_registro=models.DateField()
    pre_servi=models.FloatField()
    categoria_ser=models.ForeignKey(cate_serv,on_delete=models.CASCADE)
    def __str__(self):
        return self.nombre
