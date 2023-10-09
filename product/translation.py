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


class ModelTranslationOptions(TranslationOptions):
    fields = (
        'name',
    )

translator.register(Model, ModelTranslationOptions)

class ProductTranslationOptions(TranslationOptions):
    fields = (
        'dark_section_title',
        'dark_section_text',
        'sub_models_title',
        'sub_models_text',
        'name',
        'excerpt',
        'description',
    )

 
translator.register(Product, ProductTranslationOptions)