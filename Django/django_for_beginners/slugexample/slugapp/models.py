from django.db import models
from django.urls import reverse

# Create your models here.
class Post(models.Model):
  title = models.CharField(max_length=200)
  body = models.TextField()
  slug = models.SlugField(null=False, unique=True)

  def __str__(self):
    return self.title

  def get_absolute_url(self):
    return reverse('post_detail', kwargs={'slug': self.slug})