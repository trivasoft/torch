from django.contrib import admin
from django.urls import path, include
from django.conf.urls.static import static
from django.conf import settings
from home import views as home_views
from product import views as product_views
from offer import views as offer_views

urlpatterns = [
    path('admin/', admin.site.urls),
    path('', home_views.index, name="index"),
    path('about/', home_views.about, name="about"),
    path('services/', home_views.services, name="services"),
    path('projects/', home_views.projects, name="projects"),
    path('project/<int:id>/', home_views.project, name="project"),
    path('clients/', home_views.clients, name="clients"),
    path('contact/', home_views.contact, name="contact"),

    path('products/<int:id>/', product_views.products, name="products"),
    path('product/<int:id>/', product_views.product, name="product"),
    path('categories/', product_views.categories, name="categories"),

    path('offers/<int:id>/', offer_views.offer, name="offer"),
    path('offers/', offer_views.offers, name="offers"),

    path('summernote/', include('django_summernote.urls')),
]

urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)