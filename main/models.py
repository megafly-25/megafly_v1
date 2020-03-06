from django.db import models
from django_matplotlib import MatplotlibFigureField
from datetime import datetime,date
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
        enlacemg=models.CharField(max_length=250,blank=True,verbose_name="Enlace Mega")
        enlace_publi=models.CharField(max_length=250,blank=True,verbose_name="Enlace con Publicidad")
        categoria_pro=models.ForeignKey(cate_Jueg,on_delete=models.CASCADE,verbose_name="Categoria Producto")
        imagen=models.ImageField()
        imagen2=models.ImageField()
        imagen3=models.ImageField()
        def __str__(self):
            return self.nombre

class servi_juego(models.Model):
    nombre=models.CharField(max_length=150)
    nom_abre=models.CharField(max_length=100)
    fecha_registro=models.DateField()
    pre_servi=models.FloatField()
    categoria_ser=models.ForeignKey(cate_serv,on_delete=models.CASCADE)
    def __str__(self):
        return self.nombre