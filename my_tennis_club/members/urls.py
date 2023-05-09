from django.urls import path
from . import views

urlpatterns = [
    path('', views.main, name='main'),
    path('testing/', views.testing, name='testing'),
    path('menu/', views.menu, name='menu'),
    path('menu/tchart/', views.tchart, name='tchart'),
    path('menu/lchart/', views.lchart, name='lchart'),
    path('menu/stat/', views.stat, name='stat'),
]