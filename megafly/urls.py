from django.contrib import admin
from django.urls import path, include
from django.conf import settings
from django.conf.urls.static import static
from django.contrib.auth import views as auth_views
urlpatterns = [
    path('admin/', admin.site.urls),
    path('',include("dashboard.urls")),
    path('',include("main.urls")),
    path('password_reset/',auth_views.PasswordResetView.as_view(template_name="registration/password_reset_form.html"),name="password_reset"),
    path('password_reset_complete/',auth_views.PasswordResetCompleteView.as_view(template_name="registration/password_reset_complete.html")
    ,name="password_reset_complete"),
    path('password_reset_confirm/',auth_views.PasswordResetConfirmView.as_view(template_name="registration/password_reset_confirm.html")
    ,name="password_reset_confirm"),
    path('password_reset/done/',auth_views.PasswordResetDoneView.as_view(template_name="registration/password_reset_done.html")
    ,name="password_reset_done"),
    path('password_change/',auth_views.PasswordChangeView.as_view(template_name="registration/password_change_form.html"),
    name="password_change"),
    path('password_change/done/',auth_views.PasswordChangeDoneView.as_view(template_name="registration/password_change_done.html"),
    name="password_change_done"),
    path('logout/',auth_views.LogoutView.as_view(template_name="principal.html"),name="logout"),
    #path('accounts/',include("django.contrib.auth.urls")),
]
urlpatterns+=static(settings.MEDIA_URL,document_root=settings.MEDIA_ROOT)
urlpatterns+=static(settings.STATIC_URL,document_root=settings.STATIC_ROOT)
