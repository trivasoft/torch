from django import template
from django.db.models import Sum

import django

from product.models import Attribute, AttributeValue

register = template.Library()


@register.simple_tag
def attributes(product):


    attribute_ids = AttributeValue.objects.filter(product=product).values_list('attribute_id', flat=True)
    print(attribute_ids)
    attributes = Attribute.objects.filter(id__in=attribute_ids)

    return attributes


@register.simple_tag
def attribute_values(product, model):


    attribute_ids = AttributeValue.objects.filter(product=product).values_list('attribute_id', flat=True)
    print(attribute_ids)
    attributes = Attribute.objects.filter(id__in=attribute_ids)


    values = []

    for a in attributes:
        v = AttributeValue.objects.filter(attribute=a, product=product, model=model).last()
        if v:
            values.append(v)
        else:
            values.append('')

    return values