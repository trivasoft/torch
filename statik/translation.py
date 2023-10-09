from modeltranslation.translator import translator, TranslationOptions

from .models import *

class HomeTranslationOptions(TranslationOptions):
    fields = (
        'cover_title',
        'cover_description',
        'niye_biz_title',
        'niye_biz_description',
        'mehsullar_title',
        'mehsullar_description',
        'layiheler_title',
        'layiheler_description',
        'musteriler_title',
        'musteriler_description',
              )

   
translator.register(Home, HomeTranslationOptions)


class AboutTranslationOptions(TranslationOptions):
    fields = (
        'main_title',
        'main_description',
              )

translator.register(About, AboutTranslationOptions)


class ServiceStatikTranslationOptions(TranslationOptions):
    fields = (
        'main_title',
        'main_description',
              )

translator.register(ServiceStatik, ServiceStatikTranslationOptions)


class ProjectStatikTranslationOptions(TranslationOptions):
    fields = (
        'main_title',
        'main_description',
              )

translator.register(ProjectStatik, ProjectStatikTranslationOptions)


class PartnersTranslationOptions(TranslationOptions):
    fields = (
        'main_title',
        'main_description',
              )

translator.register(Partners, PartnersTranslationOptions)

class ContactTranslationOptions(TranslationOptions):
    fields = (
        'main_title',
        'map_button_text',
        'success_text',
              )

translator.register(Contact, ContactTranslationOptions)

