from django.db import models
from django.contrib.auth.models import Permission, User
# Create your models here.
#this is comment

class Books(models.Model):
    genre = models.ForeignKey('Genres', models.DO_NOTHING, db_column='genre',blank=True, null=True)
    name = models.CharField(max_length=200)
    summary = models.CharField(max_length=10000)
    author = models.CharField(max_length=100)
    rating = models.FloatField()
    image = models.CharField(max_length=1000)

    class Meta:
        managed = True
        db_table = 'books'

    def __str__(self):
        return self.name

class Genres(models.Model):
    genre = models.CharField(max_length=100,null=True)

    class Meta:
        managed = True
        db_table = 'genres'

    def __str__(self):
        return self.genre




class UserBook(models.Model):
    id = models.IntegerField(primary_key=True)
    book = models.ForeignKey(Books, models.DO_NOTHING, db_column='book' ,blank=True, null=True)
    user = models.ForeignKey(User, models.DO_NOTHING, db_column='user',blank=True, null=True)

    class Meta:
        managed = True
        db_table = 'user_book'


class UserCommentBook(models.Model):
    user = models.ForeignKey(User, models.DO_NOTHING, db_column='user',blank=True, null=True)
    book = models.ForeignKey(Books, models.DO_NOTHING, db_column='book',blank=True, null=True)
    comment = models.CharField(max_length=10000)
    created_time = models.DateTimeField(auto_now=True)
    class Meta:
        managed = True
        db_table = 'user_comment_book'


