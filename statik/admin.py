from django.contrib import admin

from offer.models import OffersPage
from product.models import ProductsPage
from .models import *

admin.site.register(Home)
admin.site.register(OffersPage)
admin.site.register(ProductsPage)
admin.site.register(About)
admin.site.register(ServiceStatik)
admin.site.register(ProjectStatik)
admin.site.register(Partners)
admin.site.register(Contact)
