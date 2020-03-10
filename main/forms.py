from django import  forms
from django.forms import ModelForm
from .models import User,mega_juego, cate_Jueg
import datetime

class Userform(ModelForm):
    class Meta:
        model=User
        fields=['nombre','apellido','edad','imagen']
class DateInput(forms.DateInput):
    input_type = 'date'
#class Check_Cat(forms.CheckboxSelectMultiple):
 #   def __str__(self):
  #  return self.id

class Productform(ModelForm):
    class Meta:
        fecha_registro=forms.DateField()
        model=mega_juego
        fields=['nombre','nom_abre','fecha_registro','categoria_pro','descripcion','descri_abre',
        'enlacegd','enlacegd2','enlacegd3','enlacemg','enlacemg2','enlacemg3','enlace_publi',
        'enlace_publi2','enlace_publi3','enlace_publimg','enlace_publimg2','enlace_publimg3','imagen','imagen2','imagen3','slug']
        widgets = {
            'fecha_registro': DateInput(),
            'categoria_pro':forms.CheckboxSelectMultiple(),
        }

class Categoriaform(ModelForm):
    class Meta:
        model=cate_Jueg
        fields=['nombre']