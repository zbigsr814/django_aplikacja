# django_aplikacja
Aplikacja wykorzystująca framework Django. Tworzy stronę internetową na której znajdują się wykresy temperatury i naświetlenia w czasie oraz dane statystyczne. Dane są pobierane z bazy danych MySQL. Do wykresów i analityki danych wykorzystano pyplotlib i pandas.

Wykonany projekt jest częścią mojej pracy magisterskiej którą można zobaczyć w folderze django_aplikacja jako: "aktualny stan pracy magisterskiej.docx"

URUCHOMIENIE APLIKACJI
 
W pierwszej kolejności należy utworzyć wirtualne środowisko venv oraz je aktywować:
 
Windows: 
python -m venv env
myworld\Scripts\activate

Unix/MacOS: 
python -m venv env
source myworld/bin/activate

Wykonujemy: git clone <adres_github>

Następnie za pomocą komendy pip install <pakiet> instalujemy następujące pakiety:
django, mysqlclient, matplotlib, pandas, whitenoise
  
Plik projekt.sql który znajduje się w folderze django_aplikacja należy umieścić w bazie danych MySQL(lub innej). 
Przechodzimy do pliku django_aplikacja/master_project/settings.py w DATABASES ustawiamy login, hasło itd. dla połączenia z bazą danych.

  
