from django.db import models

class Member(models.Model):
  firstname = models.CharField(max_length=255)
  lastname = models.CharField(max_length=255)
  phone = models.IntegerField(null=True)
  joined_date = models.DateField(null=True)

  def __str__(self):
    return f"{self.firstname} {self.lastname}"
  
class esp2(models.Model):
  date = models.DateField()
  time = models.TimeField()
  temp = models.CharField(max_length=255)
  light = models.CharField(max_length=255)

class esp1(models.Model):
  date = models.DateField()
  time = models.TimeField()
  temp = models.CharField(max_length=255)
  light = models.CharField(max_length=255)