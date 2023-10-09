from modeltranslation.translator import translator, TranslationOptions

from .models import *

class AttributeTranslationOptions(TranslationOptions):
    fields = (
        'name',
              )

translator.register(Attribute, AttributeTranslationOptions)


class AttributeValueTranslationOptions(TranslationOptions):
    fields = (
        'value',
    )

translator.register(AttributeValue, AttributeValueTranslationOptions)


class CategoriesPageTranslationOptions(TranslationOptions):
    fields = (
        'page_header',
        'page_header_text',
    )

translator.register(CategoriesPage, CategoriesPageTranslationOptions)



class CategoryTranslationOptions(TranslationOptions):
    fields = (
        'name',
        'excerpt',
    )

translator.register(Category, CategoryTranslationOptions)