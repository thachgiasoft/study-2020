from django.views.generic import ListView, CreateView, DetailView, UpdateView, DeleteView

from django.urls import reverse_lazy
from django.contrib.auth.forms import UserCreationForm
from django.views import generic


from .models import Post

# Create your views here.
class BlogListView(ListView):
  model = Post
  template_name = 'home.html'

class BlogDetailView(DetailView):
  model = Post
  template_name = 'blog_detail.html'

class BlogCreateView(CreateView):
  model = Post
  template_name = 'blog_new.html'
  fields = ['title', 'author', 'body']

class BlogUpdateView(UpdateView):
  model = Post
  template_name = 'blog_edit.html'
  fields = ['author', 'title', 'body']

class BlogDeleteView(DeleteView):
  model = Post
  template_name = 'blog_delete.html'
  success_url = reverse_lazy('home')
