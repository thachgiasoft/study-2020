from django.db import models
from django.urls import reverse

# Create your models here.
class Post(models.Model):
  title = models.CharField(max_length=200)
  author = models.CharField(max_length=30)
  body = models.TextField()


  def __str__(self):
    return self.title

  def get_absolute_url(self):
    return reverse('blog_detail', args=[str(self.id)])

  