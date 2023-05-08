import matplotlib.pyplot as plt
import base64
from io import BytesIO
from datetime import datetime

def get_graph():
    buffer = BytesIO()
    plt.savefig(buffer, format='png')
    buffer.seek(0)
    image_png = buffer.getvalue()
    graph = base64.b64encode(image_png)
    graph = graph.decode('utf-8')
    buffer.close()
    return graph

def get_plot(fnc,x,y):
    x_s = [str(i) for i in x]
    x_dt = [datetime.strptime(i, "%H:%M:%S") for i in x_s]

    # utwórz wykres
    plt.figure(figsize=(10,8))
    plt.title('Wykres')
    fnc(x_dt, y)
    plt.xlabel('Czas')
    plt.ylabel('Wartość')
    plt.gca().xaxis.set_major_formatter(plt.matplotlib.dates.DateFormatter('%H:%M:%S'))
    plt.xticks(rotation=45)
    graph = get_graph()
    return graph

def get_2plot(fnc,x1,y1,x2,y2):
    x_s1 = [str(i) for i in x1]
    x_dt1 = [datetime.strptime(i, "%H:%M:%S") for i in x_s1]
    x_s2 = [str(i) for i in x2]
    x_dt2 = [datetime.strptime(i, "%H:%M:%S") for i in x_s2]

    # utwórz wykres
    plt.figure(figsize=(15,8))
    plt.title('Wykres')
    fnc(x_dt1, y1, label='temp dla ESP1')
    fnc(x_dt2, y2, label='temp dla ESP')
    plt.xlabel('Czas')
    plt.ylabel('Wartość')
    # plt.gca().xaxis.set_major_formatter(plt.matplotlib.dates.DateFormatter('%H:%M:%S'))
    plt.xticks(rotation=45)
    plt.legend()
    graph = get_graph()
    return graph

