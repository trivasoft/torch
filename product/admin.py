from django.contrib import admin
from .models import *

admin.site.register(ProductsPage)
class ProductImageInline(admin.TabularInline):
    model = ProductImage

@admin.register(Product)
class ProductAdmin(admin.ModelAdmin):
    inlines = [ProductImageInline, ]
    list_display = ['name',]