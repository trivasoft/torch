# Generated by Django 3.2 on 2021-12-24 21:58

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('statik', '0002_rename_service_servicestatik'),
    ]

    operations = [
        migrations.RenameModel(
            old_name='Project',
            new_name='ProjectStatik',
        ),
    ]
