from django.http import HttpResponse
from django.template import loader
from .models import Member, esp1, esp2
from .utils import get_plot, get_2plot
from django.db.models import Q
from datetime import datetime, time as t
import matplotlib.pyplot as plt
import pandas as pd

def members(request):
  mymembers = Member.objects.all().values()
  template = loader.get_template('all_members.html')
  context = {
    'mymembers': mymembers,
  }
  return HttpResponse(template.render(context, request))


def details(request, id):
  mymember = Member.objects.get(id=id)
  template = loader.get_template('details.html')
  context = {
    'mymember': mymember,
  }
  return HttpResponse(template.render(context, request))

def main(request):
  template = loader.get_template('main.html')
  return HttpResponse(template.render())

def testing(request):
  myesp = esp1.objects.values()
  template = loader.get_template('template.html')
  context = {
    'myesp' : myesp,
  }
  return HttpResponse(template.render(context, request))

def tchart(request):
  template = loader.get_template('mchart.html')

  qs = esp1.objects.all()
  x1 = [x1.time for x1 in qs]
  y1 = [float(y1.temp) for y1 in qs]

  qs = esp2.objects.all()
  x2 = [x2.time for x2 in qs]
  y2 = [float(y2.temp) for y2 in qs]

  data = {
    "esp1_temp" : y1,
    "esp2_temp" : y2
  }

  df = pd.DataFrame(data)
  cr = df.corr()
  cr = cr.loc["esp1_temp", "esp2_temp"]
  cr = round(cr,3)

  mn = df.mean()
  mn = round(mn,3)
  mn1 = mn["esp1_temp"]
  mn2 = mn["esp2_temp"]

  chart = get_2plot(plt.plot, x1,y1,x2,y2)
  context = {
    'chart' : chart,
    'correlat' : cr,
    'mn1' : mn1,
    'mn2' : mn2
  }
  return HttpResponse(template.render(context, request))

def lchart(request):
  template = loader.get_template('mchart.html')

  qs = esp1.objects.all()
  x1 = [x1.time for x1 in qs]
  y1 = [float(y1.light) for y1 in qs]

  qs = esp2.objects.all()
  x2 = [x2.time for x2 in qs]
  y2 = [float(y2.light) for y2 in qs]

  chart = get_2plot(plt.plot, x1,y1,x2,y2)
  context = {
    'chart' : chart,
    'text' : "qqqwww"
  }
  return HttpResponse(template.render(context, request))

def menu(request):
  template = loader.get_template('menu.html')
  context = {
    
  }
  return HttpResponse(template.render(context, request))