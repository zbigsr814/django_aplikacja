# Generated by Django 3.2 on 2023-04-26 09:57

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('members', '0005_auto_20230424_1228'),
    ]

    operations = [
        migrations.CreateModel(
            name='esp2',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('date', models.DateField()),
                ('time', models.TimeField()),
                ('temp', models.CharField(max_length=255)),
                ('light', models.CharField(max_length=255)),
            ],
        ),
    ]
