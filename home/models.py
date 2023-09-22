from django.db import models


class General(models.Model):
    logo = models.FileField()
    logo_white = models.FileField()
    meta_title = models.CharField(max_length=255)
    meta_description = models.CharField(max_length=255)
    meta_keywords = models.CharField(max_length=255)
    favicon = models.FileField()
    copyright = models.CharField(max_length=255)
    powered_by_logo = models.FileField()
    powered_by_url = models.CharField(max_length=255)
    email = models.CharField(max_length=255)
    phone = models.CharField(max_length=255)
    address = models.CharField(max_length=255)
    map_embed = models.CharField(max_length=1000)
    map_url = models.CharField(max_length=1000)
    sirketimiz = models.TextField()
    our_mission = models.TextField()
    deyerlerimiz = models.TextField()
    korporativ_medeniyyet = models.TextField()
    sirketimiz_title_text = models.CharField(max_length=255)
    our_mission_title_text = models.CharField(max_length=255)
    deyerlerimiz_title_text = models.CharField(max_length=255)
    korporativ_medeniyyet_title_text = models.CharField(max_length=255)

    class Meta:
        verbose_name = 'Ümumi məlumatlar'
        verbose_name_plural = verbose_name

    def __str__(self):
        return f'Ümumi məlumatlar'


class Contact(models.Model):
    ad = models.CharField(max_length=255)
    email = models.CharField(max_length=255)
    elaqe = models.CharField(max_length=255, null=True, blank=True)
    text = models.TextField()

    class Meta:
        verbose_name = 'Yazılan Mesajlar'
        verbose_name_plural = verbose_name

    def __str__(self):
        return f'{self.ad} - {self.email}'


class Social(models.Model):
    icon = models.FileField()
    icon_font_tag = models.CharField(max_length=255)
    url = models.CharField(max_length=255)
    name = models.CharField(max_length=255)

    class Meta:
        verbose_name = 'Sosial Media Linkləri'
        verbose_name_plural = verbose_name

    def __str__(self):
        return self.name


class TeamCategory(models.Model):
    name = models.CharField(max_length=255)
    tag = models.CharField(max_length=255)

    class Meta:
        verbose_name = 'Komanda Kateqoriyalar'
        verbose_name_plural = verbose_name

    def __str__(self):
        return self.name


class Team(models.Model):
    full_name = models.CharField(max_length=255)
    image = models.ImageField()
    position = models.CharField(max_length=255)
    category = models.ForeignKey(TeamCategory, on_delete=models.CASCADE, related_name="team")

    class Meta:
        verbose_name = 'Komanda'
        verbose_name_plural = verbose_name

    def __str__(self):
        return self.full_name


class Client(models.Model):
    name = models.CharField(max_length=255)
    image = models.FileField()

    class Meta:
        verbose_name = 'Müştərilər'
        verbose_name_plural = verbose_name

    def __str__(self):
        return self.name


class Partner(models.Model):
    name = models.CharField(max_length=255)
    image = models.FileField()

    class Meta:
        verbose_name = 'Tərəfdaşlar'
        verbose_name_plural = verbose_name

    def __str__(self):
        return self.name


class Service(models.Model):
    title = models.CharField(max_length=255)
    image = models.FileField()
    description = models.CharField(max_length=255)

    class Meta:
        verbose_name = 'Xidmətlər'
        verbose_name_plural = verbose_name

    def __str__(self):
        return self.title

class OfisUnvanlar(models.Model):
    link = models.CharField(max_length=256)
    address = models.CharField(max_length=256)
    sort = models.IntegerField(default=0)
    class Meta:
        ordering = ('sort',)
    def __str__(self):
        return self.address

class Project(models.Model):
    product_category = models.ForeignKey('product.Category', on_delete=models.SET_NULL, null=True, blank=True, related_name="projects")
    title = models.CharField(max_length=255)
    image = models.FileField()
    subtitle = models.CharField(max_length=255)
    description = models.CharField(max_length=255)
    veziyyeti = models.CharField(max_length=255)
    tip = models.CharField(max_length=255)
    sahe = models.CharField(max_length=255)
    muddet = models.CharField(max_length=255)
    yer = models.CharField(max_length=255)
    musteri = models.CharField(max_length=255)

    class Meta:
        verbose_name = 'Layihələr'
        verbose_name_plural = verbose_name

    def __str__(self):
        return self.title

class Gallery(models.Model):
    project = models.ForeignKey(Project, on_delete=models.CASCADE, related_name="gallery")
    image = models.ImageField()

