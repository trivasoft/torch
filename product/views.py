from django.shortcuts import render

from home.models import General, Social
from .models import *


def categories(request):
    categories = Category.objects.all()
    page = CategoriesPage.objects.last()
    general = General.objects.all()[0]
    social = Social.objects.all()

    context = {
        'categories': categories,
        'page': page,
        'general': general,
        'social': social,
    }

    return render(request, 'categories.html', context)


def products(request):
    products = Category.objects.all()
    page = CategoriesPage.objects.last()
    general = General.objects.all()[0]
    social = Social.objects.all()

    context = {
        'products': products,
        'page': page,
        'general': general,
        'social': social,
    }

    return render(request, 'products.html', context)


def product(request, id):
    product = Category.objects.get(pk=id)
    general = General.objects.all()[0]
    social = Social.objects.all()
    context = {
        'product': product,
        'general': general,
        'social': social,
    }

    return render(request, 'product.html', context)