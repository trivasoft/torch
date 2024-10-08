# Generated by Django 3.2 on 2021-12-24 19:21

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='General',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('logo', models.FileField(upload_to='')),
                ('copyright', models.CharField(max_length=255)),
                ('powered_by_logo', models.FileField(upload_to='')),
                ('powered_by_url', models.CharField(max_length=255)),
                ('email', models.CharField(max_length=255)),
                ('phone', models.CharField(max_length=255)),
                ('address', models.CharField(max_length=255)),
                ('map_embed', models.CharField(max_length=1000)),
                ('map_url', models.CharField(max_length=1000)),
                ('our_mission', models.TextField()),
                ('deyerlerimiz', models.TextField()),
                ('korporativ_medeniyyet', models.TextField()),
            ],
        ),
    ]
