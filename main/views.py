import io
import matplotlib.pyplot as plt
from django.shortcuts import render, redirect
from .forms import Userform, Productform,Categoriaform
from .models import User, mega_juego
from matplotlib.backends.backend_agg import FigureCanvasAgg
from random import sample
from django.http import HttpResponse
from django.contrib.auth.decorators import permission_required,login_required
from django.http import HttpResponseRedirect

def prueba(request):
    return render(request,"base.html")
@login_required()
def inicio(request):
    group=request.user.groups.filter(user=request.user)[0]
    if group.name=="Administrador":
        return render(request,"inicio_admin.html")
    elif  group.name=="Usuario":
        return redirect('principal')
@login_required()
def productos(request):
    group=request.user.groups.filter(user=request.user)[0]
    if group.name=="Administrador":
        productos=mega_juego.objects.all()
        data={
            'productos':productos
        }
        return render(request,"productos.html",data)
    elif  group.name=="Usuario":
        return redirect('principal')
@login_required()
def register_product(request):
    group=request.user.groups.filter(user=request.user)[0]
    if group.name=="Administrador":
        data={
            'form':Productform()
        }
        if request.method=="POST":
            formulario=Productform(request.POST,files=request.FILES)
            if formulario.is_valid():
                formulario.save()
                data['mensaje']="Guardado Producto Correctamente"
            else:
                data['mensaje']="error"
        return render(request,"new_product.html",data)
    elif  group.name=="Usuario":
        return redirect('principal')
@login_required()
def registrar_usuarios(request):
    group=request.user.groups.filter(user=request.user)[0]
    if group.name=="Administrador":
        data={
            'form':Userform()
        }
        if request.method=="POST":
            formulario=Userform(request.POST,files=request.FILES)
            if formulario.is_valid():
                formulario.save()
                data['mensaje']="Guardado Confirmado"
        return render(request,"registrar_usuarios.html",data)
    elif  group.name=="Usuario":
        return redirect('principal')
@login_required()
def listar_usuarios(request):
    group=request.user.groups.filter(user=request.user)[0]
    if group.name=="Administrador":
        usuarios=User.objects.all()
        data={
            'usuarios':usuarios
        }
        return render(request,"listar_usuarios.html",data)
    elif  group.name=="Usuario":
        return redirect('principal')
@login_required()
def modificar_usuarios(request,id):
    group=request.user.groups.filter(user=request.user)[0]
    if group.name=="Administrador":
        usuario=User.objects.get(id=id)
        data={
            'form':Userform(instance=usuario)
        }
        if request.method=="POST":
            formulario=Userform(data=request.POST,instance=usuario)
            if formulario.is_valid():
                formulario.save()
                data['mensaje']='Modificado Correctamente'
                data['form']=formulario
        return render(request,"modificar_usuarios.html",data)
    elif  group.name=="Usuario":
        return redirect('principal')
@login_required()
def eliminar_usuarios(request,id):
    group=request.user.groups.filter(user=request.user)[0]
    if group.name=="Administrador":
        usuario=User.objects.get(id=id)
        usuario.delete()
        return redirect(to="listar_usuarios")
    elif  group.name=="Usuario":
        return redirect('principal')
@login_required()
def registrar_genero(request):
    group=request.user.groups.filter(user=request.user)[0]
    if group.name=="Administrador":
        data={
            'form':Categoriaform()
        }
        if request.method=="POST":
            formulario=Categoriaform(request.POST)
            if formulario.is_valid():
                formulario.save()
                data['mensaje']="Guardado Confirmado"
        return render(request,"registrar_genero.html",data)
    elif  group.name=="Usuario":
        return redirect('principal')