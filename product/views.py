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


def products(request, id):
    category = Category.objects.get(pk=id)
    products = Product.objects.filter(category=category)
    general = General.objects.all()[0]
    social = Social.objects.all()

    context = {
        'products': products,
        'general': general,
        'social': social,
        'category': category,
    }

    return render(request, 'products.html', context)


def product(request, id):
    product = Product.objects.get(pk=id)
    general = General.objects.all()[0]
    social = Social.objects.all()
    context = {
        'product': product,
        'general': general,
        'social': social,
    }

    return render(request, 'product.html', context)