from django.contrib import admin

from .models import Post  # new

# Register your models here.
class PostAdmin(admin.ModelAdmin):
  list_display = ('title', 'body', 'slug')

admin.site.register(Post, PostAdmin)
