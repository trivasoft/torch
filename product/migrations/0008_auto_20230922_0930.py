# Generated by Django 3.2 on 2023-09-22 05:30

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('product', '0007_attribute_attributevalue'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='attributevalue',
            name='product',
        ),
        migrations.AddField(
            model_name='attributevalue',
            name='model',
            field=models.ForeignKey(default=1, on_delete=django.db.models.deletion.CASCADE, related_name='attributes', to='product.model'),
            preserve_default=False,
        ),
    ]
