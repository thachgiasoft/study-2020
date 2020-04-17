from django.views.generic import ListView, DetailView
from django.views.generic.edit import CreateView, UpdateView, DeleteView
from django.urls import reverse_lazy

from .models import Post, Article

class BlogListView(ListView):
  model = Post
  template_name = 'home.html'

class BlogDetailView(DetailView):
  model = Post
  template_name = 'post_detail.html'

class BlogCreateView(CreateView):
  model = Post
  template_name = 'post_new.html'
  fields = ['title', 'author', 'body']

class BlogUpdateView(UpdateView):
  model = Post
  template_name = 'post_edit.html'
  fields = ['title', 'author','body']

class BlogDeleteView(DeleteView):
  model = Post
  template_name = 'post_delete.html'
  success_url = reverse_lazy('home')

class ArticleCreateView(CreateView):
  model = Article
  template_name = 'article_new.html'
  fields = ['url','title', 'author', 'body']