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