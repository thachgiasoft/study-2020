from django.urls import path
from .views import HomePageView, SamplePageView, ExtendsPageView #views.pyを参照している

urlpatterns = [
  path('', HomePageView.as_view(), name='home'),
  path('sample/', SamplePageView.as_view(), name='sample'),
  path('extends/', ExtendsPageView.as_view(), name='extends'), 
]