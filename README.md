# django_aplikacja
Aplikacja wykorzystująca framework Django. Tworzy stronę internetową na której znajdują się wykresy temperatury i naświetlenia w czasie. Dane są pobierane z bazy danych MySQL. Do wykresów i analityki danych wykorzystano pyplotlib i pandas.

URUCHOMIENIE APLIKACJI

W pierwszej kolejności należy utworzyć wirtualne środowisko venv oraz je aktywować:
Windows: 
python -m venv env
myworld\Scripts\activate
Unix/MacOS: 
python -m venv env
source myworld/bin/activate

Następnie za pomocą komendy pip install <pakiet> instalujemy następujące pakiety:
django, mysqlclient, matplotlib, pandas, whitenoise
  
Plik projekt.sql który znajduje się w folderze django_aplikacja należy umieścić w bazie danych MySQL(lub innej). Przechodzimy do pliku django_aplikacja/master_project/settings.py w DATABASES ustawiamy login, hasło itd. dla bołączenia z bazą danych.
