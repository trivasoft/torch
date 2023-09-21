from django.contrib import admin
from .models import *


class CategoryImageInline(admin.TabularInline):
    model = CategoryImage

@admin.register(Category)
class CategoryAdmin(admin.ModelAdmin):
    inlines = [CategoryImageInline, ]
    list_display = ['name',]