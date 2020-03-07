from django.shortcuts import render, redirect, get_object_or_404
from django.contrib.auth.forms import UserCreationForm, AuthenticationForm
from django.contrib.auth.models import User,Group
from main.models import mega_juego
from django.contrib.auth import login,authenticate
from django.core.paginator import Paginator
from django.contrib.auth.decorators import login_required,permission_required 
from django.http import HttpResponseRedirect
from django.views.defaults import page_not_found
# Create your views here.
def mi_error_404(request,exception):
    return page_not_found(request,exception,template_name="404.html")
    
def index(request):
    if request.user.is_authenticated:
        group=request.user.groups.filter(user=request.user)[0]
        if group.name=="Administrador" or group.name=="Super_Administrador":
            return redirect('inicio')
        elif group.name=="Usuario":
            return redirect('principal')
    else:
        return redirect('principal')
    return redirect('principal')   
        
def principal(request):
    productos=mega_juego.objects.get_queryset().order_by('id')
    paginator=Paginator(productos,30)
    #data={
    #    'productos':productos
    #}
    page_number = request.GET.get('page')
    page_obj = paginator.get_page(page_number)
    return render(request,"principal.html",{'page_obj': page_obj})
def juego(request,id):
    #productos=produc_fer.objects.get(id=id)
    productos=get_object_or_404(mega_juego,id=id)
    data={
        'productos':productos
    }
    return render(request,"Juego.html",data)
def registrar(request):
    if request.user.is_authenticated:
        return redirect('principal')
    else:
        if request.method=="POST":
            form=UserCreationForm(request.POST)
            if form.is_valid():
                form.save()
                username=form.cleaned_data['username']
                password=form.cleaned_data['password1']
                user=authenticate(username=username,password=password)
                group = Group.objects.get(name='Usuario')
                user.groups.add(group)
                login(request,user)
                return redirect('/')
        else:
            form=UserCreationForm()
        
        data={
            'form':form
        }
        return render(request,"registration/registrar.html",data)
def loginuser(request):
    if request.user.is_authenticated:
        return redirect('principal')
    else:
        form = AuthenticationForm()
        if request.method == "POST":
            form = AuthenticationForm(data=request.POST)
            if form.is_valid():
                username = form.cleaned_data['username']
                password = form.cleaned_data['password']
                user = authenticate(username=username, password=password)
                login(request, user)
                return redirect('/')
        return render(request,"registration/login.html",{'form': form})