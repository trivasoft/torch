from django.db import models

class Home(models.Model):
    cover_title = models.CharField(max_length=255)
    cover_description = models.CharField(max_length=255)
    cover_image = models.ImageField()
    main_video_back = models.FileField(null=True, blank=True)
    niye_biz_title = models.CharField(max_length=255)
    niye_biz_description = models.CharField(max_length=255)
    mehsullar_title = models.CharField(max_length=255)
    mehsullar_description = models.CharField(max_length=255)
    mehsullar_image = models.ImageField()
    layiheler_title = models.CharField(max_length=255)
    layiheler_description = models.CharField(max_length=255)
    layiheler_image = models.ImageField()
    musteriler_title = models.CharField(max_length=255)
    musteriler_description = models.CharField(max_length=255)
    musteriler_image = models.ImageField()

    class Meta:
        verbose_name = 'Ana Səhifə'
        verbose_name_plural = verbose_name

    def __str__(self):
        return f'Ana səhifə statik tekstlər və şəkillər'


class About(models.Model):
    main_title = models.CharField(max_length=255)
    main_description = models.CharField(max_length=255)
    main_image = models.ImageField()
    missiya_image = models.ImageField()
    korporativ_medeniyyet_image = models.ImageField()

    class Meta:
        verbose_name = 'Haqqında'
        verbose_name_plural = verbose_name

    def __str__(self):
        return f'Haqqında statik tekstlər və şəkillər'

class ServiceStatik(models.Model):
    main_title = models.CharField(max_length=255)
    main_description = models.CharField(max_length=255)


    class Meta:
        verbose_name = 'Xidmətlər'
        verbose_name_plural = verbose_name

    def __str__(self):
        return f'Xidmətlər statik tekstlər'

class ProjectStatik(models.Model):
    main_title = models.CharField(max_length=255)
    main_description = models.CharField(max_length=255)

    class Meta:
        verbose_name = 'Layihələr'
        verbose_name_plural = verbose_name

    def __str__(self):
        return f'Layihələr statik tekstlər'

class Partners(models.Model):
    main_title = models.CharField(max_length=255)
    main_description = models.CharField(max_length=255)
    main_image = models.ImageField()

    class Meta:
        verbose_name = 'Tərəfdaşlar'
        verbose_name_plural = verbose_name

    def __str__(self):
        return f'Tərəfdaşlar statik tekstlər və şəkillər'

class Contact(models.Model):
    main_title = models.CharField(max_length=255)
    map_button_text = models.CharField(max_length=255)
    success_text = models.CharField(max_length=255)

    class Meta:
        verbose_name = 'Əlaqə Səhifəsi'
        verbose_name_plural = verbose_name

    def __str__(self):
        return f'Əlaqə Səhifəsi statik tekstlər'