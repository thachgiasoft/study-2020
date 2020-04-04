from django.db import models

# Create your models here.
class Profile(models.Model):
  name = models.CharField(max_length=30)  # 名前
  age = models.CharField(max_length=3)  # 年齢
  introduction = models.TextField()  # 自己紹介

  def __str__(self):
    data = self.name + ' | ' +  self.age + ' | ' + self.introduction
    return data