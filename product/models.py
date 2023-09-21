from django.db import models



class Category(models.Model):
    name = models.CharField(max_length=256)
    excerpt = models.TextField()
    main_image = models.ImageField()
    description = models.TextField()

    def __str__(self):
        return self.name


class CategoryImage(models.Model):
    product = models.ForeignKey(Category, on_delete=models.CASCADE, related_name="images")
    image = models.ImageField()

    def __str__(self):
        return f'{self.id}'


class CategoriesPage(models.Model):
    page_header = models.CharField(max_length=256)
    page_header_text = models.TextField()

    def __str__(self):
        return f'Kateqoriyalar səhifəsi'
