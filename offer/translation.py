from modeltranslation.translator import translator, TranslationOptions

from .models import *

class OfferTranslationOptions(TranslationOptions):
    fields = (
        'name',
        'excerpt',
        'description',
              )

translator.register(Offer, OfferTranslationOptions)


class OfferPageTranslationOptions(TranslationOptions):
    fields = (
        'page_header',
        'page_header_text',
    )

translator.register(OffersPage, OfferPageTranslationOptions)