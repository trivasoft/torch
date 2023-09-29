from django.db import models



class Category(models.Model):
    name = models.CharField(max_length=256)
    excerpt = models.TextField()
    main_image = models.ImageField()

    def __str__(self):
        return self.name



class Product(models.Model):
    category = models.ForeignKey(Category, on_delete=models.CASCADE, related_name="products")
    dark_section_title = models.CharField(max_length=256)
    dark_section_text = models.TextField()
    name = models.CharField(max_length=256)
    excerpt = models.TextField()
    main_image = models.ImageField()
    description = models.TextField()

    def __str__(self):
        return self.name




class ProductsImage(models.Model):
    product = models.ForeignKey(Product, on_delete=models.CASCADE, related_name="images")
    image = models.ImageField()

    def __str__(self):
        return f'{self.id}'




class Model(models.Model):
    product = models.ForeignKey(Product, on_delete=models.CASCADE, related_name="models")
    name = models.CharField(max_length=256)
    file = models.FileField(null=True, blank=True)

    def __str__(self):
        return self.name


class Attribute(models.Model):
    name = models.CharField(max_length=256)

    def __str__(self):
        return self.name



class AttributeValue(models.Model):
    attribute = models.ForeignKey(Attribute, on_delete=models.CASCADE, related_name="values")
    model = models.ForeignKey(Model, on_delete=models.CASCADE, related_name="values")
    product = models.ForeignKey(Product, on_delete=models.CASCADE, related_name="values")
    value = models.CharField(max_length=256)

    def __str__(self):
        return f'{self.attribute} - {self.product} - {self.value}'


class CategoriesPage(models.Model):
    page_header = models.CharField(max_length=256)
    page_header_text = models.TextField()

    def __str__(self):
        return f'Kateqoriyalar səhifəsi'

