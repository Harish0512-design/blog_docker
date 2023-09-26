from django.db import models

# Create your models here.
class Post(models.Model):
    title = models.CharField(max_length=65)
    description = models.TextField()
    created_date = models.DateTimeField(auto_now_add=True)

    def __str__(self) -> str:
        return f'{self.title}'