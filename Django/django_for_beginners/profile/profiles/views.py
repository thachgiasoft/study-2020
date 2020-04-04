from django.views.generic import ListView
from .models import Profile

class HomePageView(ListView):
  model = Profile
  template_name = 'home.html'
  context_object_name = 'all_profiles_list'