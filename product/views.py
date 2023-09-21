from django.shortcuts import render

from home.models import General, Social
from .models import *


def products(request):
    products = Product.objects.all()
    page = ProductsPage.objects.last()
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
    product = Product.objects.get(pk=id)
    general = General.objects.all()[0]
    social = Social.objects.all()
    context = {
        'product': product,
        'general': general,
        'social': social,
    }

    return render(request, 'product.html', context)