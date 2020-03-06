from django.urls import path
from django.contrib.auth.decorators import login_required,permission_required
from .views import registrar_usuarios,listar_usuarios, modificar_usuarios, eliminar_usuarios, inicio, productos,prueba,register_product,registrar_genero
urlpatterns = [
    path('registrar_usuarios/',registrar_usuarios,name="registrar_usuarios"),
    path('listar_usuarios/',listar_usuarios,name="listar_usuarios"),
    path('modificar_usuarios/<id>/',modificar_usuarios,name="modificar_usuarios"),
    path('eliminar_usuarios/<id>/',eliminar_usuarios,name="eliminar_usuarios"),
    path('inicio',inicio,name="inicio"),
    path('productos',productos,name="productos"),
    #path('prueba',prueba,name="prueba"),
    path('registrar-producto',register_product,name="register_product"),
    path('registrar-genero',registrar_genero,name="registrar_genero"),
]
