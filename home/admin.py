from django.contrib import admin
from django_summernote.admin import SummernoteModelAdmin
from .models import *

class GeneralAdmin(SummernoteModelAdmin):
    summernote_fields = '__all__'

admin.site.register(General, GeneralAdmin)
admin.site.register(Social)
admin.site.register(Contact)
admin.site.register(TeamCategory)
admin.site.register(Team)
admin.site.register(Client)
admin.site.register(Partner)
admin.site.register(Service)
admin.site.register(OfisUnvanlar)


class GalleryInline(admin.TabularInline):
    model = Gallery
    extra = 1

@admin.register(Project)
class ProjectAdmin(admin.ModelAdmin):
    list_display = ('title','subtitle')
    inlines = (GalleryInline,)
