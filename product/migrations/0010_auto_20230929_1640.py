# Generated by Django 3.2 on 2023-09-29 12:40

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('product', '0009_auto_20230922_0945'),
    ]

    operations = [
        migrations.AddField(
            model_name='product',
            name='dark_section_text',
            field=models.TextField(default='1'),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='product',
            name='dark_section_title',
            field=models.CharField(default='1', max_length=256),
            preserve_default=False,
        ),
    ]
