# Generated by Django 3.0.4 on 2020-09-04 08:40

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('shoppies', '0002_auto_20200904_0822'),
    ]

    operations = [
        migrations.AlterField(
            model_name='awards',
            name='Poster',
            field=models.TextField(default='----'),
        ),
        migrations.AlterField(
            model_name='awards',
            name='Title',
            field=models.CharField(default='----', max_length=200),
        ),
        migrations.AlterField(
            model_name='awards',
            name='Type',
            field=models.CharField(default='----', max_length=20),
        ),
        migrations.AlterField(
            model_name='awards',
            name='Year',
            field=models.CharField(default='----', max_length=10),
        ),
        migrations.AlterField(
            model_name='awards',
            name='imdbID',
            field=models.CharField(default='----', max_length=20),
        ),
        migrations.AlterField(
            model_name='awards',
            name='userID',
            field=models.CharField(default='----', max_length=20),
        ),
    ]
