from django.urls import reverse_lazy
from django.contrib.auth.forms import UserCreationForm
from django.views import generic
from users.forms import CustomUserCreationForm

# Create your views here.
class SignUpView(generic.CreateView):
  #form_class = UserCreationForm
  form_class = CustomUserCreationForm
  success_url = reverse_lazy('login')
  template_name = 'signup.html'