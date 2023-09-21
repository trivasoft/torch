from django.contrib import admin
from .models import *

admin.site.register(OffersPage)

class OfferImageInline(admin.TabularInline):
    model = OfferImage

@admin.register(Offer)
class OfferAdmin(admin.ModelAdmin):
    inlines = [OfferImageInline, ]
    list_display = ['name',]