from django.urls import path
from django.conf.urls import handler404
from .views import mi_error_404, index, registrar, principal, juego, loginuser
urlpatterns = [
    path('',index,name="index"),
    path('registrar/',registrar,name="registrar"),
    path('juego/<id>/',juego,name="juego"),
    path('principal/',principal,name="principal"),
    path('login/',loginuser,name="login"),
    
]
handler404=mi_error_404