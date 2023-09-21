from django.contrib import admin
from .models import *


class ProductImageInline(admin.TabularInline):
    model = ProductsImage


@admin.register(Product)
class ProductAdmin(admin.ModelAdmin):
    inlines = [ProductImageInline, ]
    list_display = ['name',]

@admin.register(Category)
class CategoryAdmin(admin.ModelAdmin):
    list_display = ['name',]