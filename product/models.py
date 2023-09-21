from django.db import models



class Product(models.Model):
    name = models.CharField(max_length=256)
    excerpt = models.TextField()
    main_image = models.ImageField()
    description = models.TextField()

    def __str__(self):
        return self.name


class ProductImage(models.Model):
    product = models.ForeignKey(Product, on_delete=models.CASCADE, related_name="images")
    image = models.ImageField()

    def __str__(self):
        return f'{self.id}'


class ProductsPage(models.Model):
    page_header = models.CharField(max_length=256)
    page_header_text = models.TextField()

    def __str__(self):
        return f'Məhsullar səhifəsi'
