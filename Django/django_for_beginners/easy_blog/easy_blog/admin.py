from django.contrib import admin
from .models import User, Post

# Register your models here.
myModels = [User, Post]
admin.site.register(myModels)