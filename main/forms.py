from django import  forms
from django.forms import ModelForm
from .models import User,mega_juego,cate_Jueg
import datetime

class Userform(ModelForm):
    class Meta:
        model=User
        fields=['nombre','apellido','edad','imagen']
class DateInput(forms.DateInput):
    input_type = 'date'
class Productform(ModelForm):
    class Meta:
        fecha_registro=forms.DateField()
        model=mega_juego
        fields=['nombre','nom_abre','fecha_registro','categoria_pro','descripcion','descri_abre','enlacegd','enlacemg','enlace_publi','imagen','imagen2','imagen3']
        widgets = {
            'fecha_registro': DateInput(),

        }
class Categoriaform(ModelForm):
    class Meta:
        model=cate_Jueg
        fields=['nombre']