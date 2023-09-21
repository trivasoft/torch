from django.shortcuts import render

from home.models import General, Social
from .models import *


def offers(request):
    offers = Offer.objects.all()
    page = OffersPage.objects.last()
    general = General.objects.all()[0]
    social = Social.objects.all()

    context = {
        'products': offers,
        'page': page,
        'general': general,
        'social': social,
    }

    return render(request, 'offers.html', context)


def offer(request, id):
    offer = Offer.objects.get(pk=id)

    context = {
        'product': offer
    }

    return render(request, 'offer.html', context)