from django.urls import path
from django.conf.urls import handler404
from .views import mi_error_404, index, registrar, principal, juego, loginuser,sitemap

urlpatterns = [
    path('',index,name="index"),
    path('registrar/',registrar,name="registrar"),
    path('principal/',principal,name="principal"),
    path('juego/<slug>',juego,name="juego"),
    path('login/',loginuser,name="login"),
    path('sitemap.xlm',sitemap),
    path('principal/sitemap.xlm',sitemap),

]
handler404=mi_error_404
#