from django.contrib import admin
from .models import User,MyModel,cate_Jueg,cate_serv,mega_juego,servi_juego

# Register your models here.
admin.site.register(User)
admin.site.register(MyModel)
admin.site.register(cate_Jueg)
admin.site.register(cate_serv)
admin.site.register(mega_juego)
admin.site.register(servi_juego)