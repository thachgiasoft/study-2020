from django.contrib import admin
from .models import Profile # modelをインポート

admin.site.register(Profile) # インポートしたmodelを管理者サイトに登録する