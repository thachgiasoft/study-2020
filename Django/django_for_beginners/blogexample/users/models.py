from django.contrib.auth.models import AbstractUser
from django.db import models

# Create your models here.
class CustomUser(AbstractUser):
  # 年齢
  age = models.PositiveIntegerField(null=True, blank=True)

  # 好きな芸能人
  favorite_celebrity = models.TextField(null=True, blank=True)