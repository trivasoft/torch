from django.shortcuts import render

from home.models import General, Social
from .models import *

from django.conf import settings
from django.http import HttpResponse
from django.utils import translation
def categories(request):
    categories = Category.objects.all()
    page = CategoriesPage.objects.last()
    general = General.objects.all()[0]
    social = Social.objects.all()
    if request.get_host() == 'torcheu.com' and request.COOKIES.get('is_visited') != 'yes':
        user_language = "en"
        translation.activate(user_language)
        response = HttpResponse(...)
        response.set_cookie(settings.LANGUAGE_COOKIE_NAME, user_language)
        response.set_cookie('is_visited', 'yes')
    elif request.COOKIES.get('django_language') == 'en':
        user_language = "en"
        translation.activate(user_language)
        response = HttpResponse(...)
        response.set_cookie(settings.LANGUAGE_COOKIE_NAME, user_language)
        response.set_cookie('is_visited', 'yes')
    elif request.COOKIES.get('django_language') == 'ru':
        user_language = "ru"
        translation.activate(user_language)
        response = HttpResponse(...)
        response.set_cookie(settings.LANGUAGE_COOKIE_NAME, user_language)
        response.set_cookie('is_visited', 'yes')
    elif request.COOKIES.get('django_language') == 'az':
        user_language = "az"
        translation.activate(user_language)
        response = HttpResponse(...)
        response.set_cookie(settings.LANGUAGE_COOKIE_NAME, user_language)
        response.set_cookie('is_visited', 'yes')
    else:
        if request.get_host() == 'torcheu.com':
            user_language = "en"
            print("engliiiiiiish")
            translation.activate(user_language)
            response = HttpResponse(...)
            response.set_cookie(settings.LANGUAGE_COOKIE_NAME, user_language)
            response.set_cookie('is_visited', 'yes')
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
    if request.get_host() == 'torcheu.com' and request.COOKIES.get('is_visited') != 'yes':
        user_language = "en"
        translation.activate(user_language)
        response = HttpResponse(...)
        response.set_cookie(settings.LANGUAGE_COOKIE_NAME, user_language)
        response.set_cookie('is_visited', 'yes')
    elif request.COOKIES.get('django_language') == 'en':
        user_language = "en"
        translation.activate(user_language)
        response = HttpResponse(...)
        response.set_cookie(settings.LANGUAGE_COOKIE_NAME, user_language)
        response.set_cookie('is_visited', 'yes')
    elif request.COOKIES.get('django_language') == 'ru':
        user_language = "ru"
        translation.activate(user_language)
        response = HttpResponse(...)
        response.set_cookie(settings.LANGUAGE_COOKIE_NAME, user_language)
        response.set_cookie('is_visited', 'yes')
    elif request.COOKIES.get('django_language') == 'az':
        user_language = "az"
        translation.activate(user_language)
        response = HttpResponse(...)
        response.set_cookie(settings.LANGUAGE_COOKIE_NAME, user_language)
        response.set_cookie('is_visited', 'yes')
    else:
        if request.get_host() == 'torcheu.com':
            user_language = "en"
            print("engliiiiiiish")
            translation.activate(user_language)
            response = HttpResponse(...)
            response.set_cookie(settings.LANGUAGE_COOKIE_NAME, user_language)
            response.set_cookie('is_visited', 'yes')
    context = {
        'products': products,
        'general': general,
        'social': social,
        'category': category,
    }

    days_expire = 7
    max_age = days_expire * 24 * 60 * 60
    response = render(request, 'products.html', context)
    response.set_cookie('is_visited', 'yes', max_age=max_age)
    return response


def product(request, id):
    product = Product.objects.get(pk=id)
    general = General.objects.all()[0]
    social = Social.objects.all()
    if request.get_host() == 'torcheu.com' and request.COOKIES.get('is_visited') != 'yes':
        user_language = "en"
        translation.activate(user_language)
        response = HttpResponse(...)
        response.set_cookie(settings.LANGUAGE_COOKIE_NAME, user_language)
        response.set_cookie('is_visited', 'yes')
    elif request.COOKIES.get('django_language') == 'en':
        user_language = "en"
        translation.activate(user_language)
        response = HttpResponse(...)
        response.set_cookie(settings.LANGUAGE_COOKIE_NAME, user_language)
        response.set_cookie('is_visited', 'yes')
    elif request.COOKIES.get('django_language') == 'ru':
        user_language = "ru"
        translation.activate(user_language)
        response = HttpResponse(...)
        response.set_cookie(settings.LANGUAGE_COOKIE_NAME, user_language)
        response.set_cookie('is_visited', 'yes')
    elif request.COOKIES.get('django_language') == 'az':
        user_language = "az"
        translation.activate(user_language)
        response = HttpResponse(...)
        response.set_cookie(settings.LANGUAGE_COOKIE_NAME, user_language)
        response.set_cookie('is_visited', 'yes')
    else:
        if request.get_host() == 'torcheu.com':
            user_language = "en"
            print("engliiiiiiish")
            translation.activate(user_language)
            response = HttpResponse(...)
            response.set_cookie(settings.LANGUAGE_COOKIE_NAME, user_language)
            response.set_cookie('is_visited', 'yes')
    context = {
        'product': product,
        'general': general,
        'social': social,
    }

    days_expire = 7
    max_age = days_expire * 24 * 60 * 60
    response = render(request, 'product.html', context)
    response.set_cookie('is_visited', 'yes', max_age=max_age)
    return response