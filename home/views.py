from django.shortcuts import render

from .forms import ContactForm
from .models import *
from statik.models import *

from django.conf import settings
from django.http import HttpResponse
from django.utils import translation

def index(request):
    general = General.objects.all()[0]
    social = Social.objects.all()
    home_statik = Home.objects.all()[0]
    is_visited = False
    if request.COOKIES.get('is_visited') == 'yes':
        is_visited = True



    print(request.get_host())
    print("====+======")
    print(request.COOKIES.get('is_visited'))

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
        'general': general,
        'social': social,
        'home_statik': home_statik,
        'is_visited': is_visited,
    }
    days_expire = 7
    max_age = days_expire * 24 * 60 * 60
    response = render(request, 'index.html', context)
    response.set_cookie('is_visited', 'yes', max_age=max_age)
    return response

def about(request):
    general = General.objects.all()[0]
    social = Social.objects.all()
    about_statik = About.objects.all()[0]
    team = Team.objects.all()
    team_categories = TeamCategory.objects.all()
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
        'general': general,
        'social': social,
        'about_statik': about_statik,
        'team': team,
        'team_categories': team_categories,
    }
    days_expire = 7
    max_age = days_expire * 24 * 60 * 60
    response = render(request, 'about.html', context)
    response.set_cookie('is_visited', 'yes', max_age=max_age)
    return response

def services(request):
    general = General.objects.all()[0]
    social = Social.objects.all()
    service_statik = ServiceStatik.objects.all()[0]
    services = Service.objects.all()
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
        'general': general,
        'social': social,
        'service_statik': service_statik,
        'services': services,
    }
    days_expire = 7
    max_age = days_expire * 24 * 60 * 60
    response = render(request, 'services.html', context)
    response.set_cookie('is_visited', 'yes', max_age=max_age)
    return response

def projects(request):
    general = General.objects.all()[0]
    social = Social.objects.all()
    projects_statik = ProjectStatik.objects.all()[0]
    projects = Project.objects.all()
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
        'general': general,
        'social': social,
        'projects_statik': projects_statik,
        'projects': projects,
    }
    days_expire = 7
    max_age = days_expire * 24 * 60 * 60
    response = render(request, 'projects.html', context)
    response.set_cookie('is_visited', 'yes', max_age=max_age)
    return response

def project(request, id):
    general = General.objects.all()[0]
    social = Social.objects.all()
    project = Project.objects.get(pk=id)
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
        'general': general,
        'social': social,
        'project': project,

    }
    days_expire = 7
    max_age = days_expire * 24 * 60 * 60
    response = render(request, 'project.html', context)
    response.set_cookie('is_visited', 'yes', max_age=max_age)
    return response

def clients(request):
    general = General.objects.all()[0]
    social = Social.objects.all()
    partners_statik = Partners.objects.all()[0]
    clients = Client.objects.all()
    n = 1
    arr = []
    in_arr = []
    for i in clients:

        in_arr.append(i)
        if (n % 2) == 0 and n != 1:
            arr.append(in_arr)
            in_arr = []
        n = n+1
    partners = Partner.objects.all()
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
        'general': general,
        'social': social,
        'partners_statik': partners_statik,
        'clients': arr,
        'partners': partners,
    }
    days_expire = 7
    max_age = days_expire * 24 * 60 * 60
    response = render(request, 'clients.html', context)
    response.set_cookie('is_visited', 'yes', max_age=max_age)
    return response

def contact(request):
    general = General.objects.all()[0]
    social = Social.objects.all()
    addresses = OfisUnvanlar.objects.all()
    contact_statik = Contact.objects.all()[0]
    form = ContactForm()
    if request.method == "POST":
        form = ContactForm(request.POST)
        if form.is_valid():
            form.save()
            context = {
                'general': general,
                'social': social,
                'contact_statik': contact_statik,
            }
            return render(request, "success.html", context)
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
        'general': general,
        'addresses': addresses,
        'social': social,
        'contact_statik': contact_statik,
    }
    days_expire = 7
    max_age = days_expire * 24 * 60 * 60
    response = render(request, 'contact.html', context)
    response.set_cookie('is_visited', 'yes', max_age=max_age)
    return response