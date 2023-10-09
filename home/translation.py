from modeltranslation.translator import translator, TranslationOptions

from .models import *

class GeneralTranslationOptions(TranslationOptions):
    fields = ('address','sirketimiz','copyright','our_mission','deyerlerimiz','korporativ_medeniyyet','sirketimiz_title_text','our_mission_title_text','deyerlerimiz_title_text','korporativ_medeniyyet_title_text')

translator.register(General, GeneralTranslationOptions)

class TeamCatTranslationOptions(TranslationOptions):
    fields = ('name',)

translator.register(TeamCategory, TeamCatTranslationOptions)

class TeamTranslationOptions(TranslationOptions):
    fields = ('position',)

translator.register(Team, TeamTranslationOptions)

class ProjectTranslationOptions(TranslationOptions):
    fields = ('title','subtitle','description','veziyyeti','tip','sahe','muddet','yer','musteri')

translator.register(Project, ProjectTranslationOptions)


class OfisUnvanlarTranslationOptions(TranslationOptions):
    fields = ('address',)

translator.register(OfisUnvanlar, OfisUnvanlarTranslationOptions)