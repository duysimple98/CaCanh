from django.db import models
from django.conf import settings
from django.shortcuts import reverse
from django.db.models.signals import post_save
from django.contrib.auth import get_user_model
from tinymce.models import HTMLField

User = get_user_model()

statusChoice = ((1, 'Hiển thị'), (0, 'Ẩn'))


class Category(models.Model):
    cat_id = models.AutoField(primary_key='true')
    cat_name = models.CharField(max_length=50, null=False)
    cat_image = models.ImageField(max_length=255, )
    status = models.SmallIntegerField(choices=statusChoice)
    date_create = models.DateField()

    def __str__(self):
        return self.cat_name

    class Meta:
        db_table = "tbl_Category"


class Product(models.Model):
    listCategory = Category.objects.all()
    result = []
    for item in listCategory:
        result.append(
            (item.cat_id, item.cat_name)
        )

    pro_id = models.AutoField(primary_key='true')
    pro_name = models.CharField(max_length=50, null=False)
    cat_id = models.IntegerField(null=False, choices=result)
    pri_image = models.ImageField(max_length=255)
    pro_price = models.FloatField()
    description = models.TextField()
    status = models.SmallIntegerField(choices=statusChoice)
    date_create = models.DateField()

    class Meta:
        db_table = "tbl_Product"


class Order(models.Model):
    order_id = models.AutoField(primary_key='true')
    user_id = models.IntegerField()
    total = models.FloatField()
    status = models.SmallIntegerField()
    date_create = models.DateTimeField(null=True)

    class Meta:
        db_table = "tbl_Order"


class OrderDetail(models.Model):
    detail_id = models.AutoField(primary_key='true')
    order_id = models.IntegerField(null=False)
    pro_id = models.IntegerField(null=False)
    pro_price = models.IntegerField(null=False)
    pro_image = models.IntegerField()
    Quanlity = models.IntegerField(null=False)
    status = models.SmallIntegerField()
    date_create = models.DateTimeField(null=True)

    class Meta:
        db_table = "tbl_OrderDetail"

#
# class Customer(models.Model):
#     cus_id = models.AutoField(primary_key='true')
#     full_name = models.CharField(max_length=255, null=False)
#     mobile = models.CharField(max_length=10, null=False)
#     email = models.CharField(max_length=255, null=False)
#     address = models.CharField(max_length=255, null=False)
#     content = models.TextField()
#     date_create = models.DateTimeField(null=True)
#
#     class Meta:
#         db_table = "tbl_Customer"


class ThuVien(models.Model):
    lib_id = models.AutoField(primary_key='true')
    lib_td = models.TextField()
    lib_nd = models.TextField()
    lib_image = models.ImageField(max_length=255)

    class Meta:
        db_table = "tbl_ThuVien"


class Blog(models.Model):
    blo_id = models.AutoField(primary_key='true')
    blo_image1 = models.ImageField(max_length=255)
    blo_image2 = models.ImageField(max_length=255)
    blo_slxem = models.IntegerField()
    blo_td = models.TextField()
    blo_nd = models.TextField()
    blo_tt = models.TextField()
    blo_tg = models.CharField(max_length=255, null=False)
    tag_id = models.IntegerField()
    date_create = models.DateField()

    class Meta:
        db_table = "tbl_Blog"


class Tag(models.Model):
    tag_id = models.AutoField(primary_key='true')
    tag_name = models.CharField(max_length=255, null=False)
    date_create = models.DateField()

    class Meta:
        db_table = "tbl_Tag"


class LienHe(models.Model):
    co_id = models.AutoField(primary_key='true')
    co_name = models.CharField(max_length=255, null=False)
    co_phone = models.CharField(max_length=10, null=False)
    co_email = models.CharField(max_length=255, null=False)
    co_adress = models.CharField(max_length=255, null=False)
    co_nd = models.TextField()

    class Meta:
        db_table = "tbl_LienHe"


class PostView(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    post = models.ForeignKey('Post', on_delete=models.CASCADE)

    def __str__(self):
        return self.user.username


class Author(models.Model):
    user = models.OneToOneField(User, on_delete=models.CASCADE)
    profile_picture = models.ImageField()

    def __str__(self):
        return self.user.username
#
#
class CategoryBL(models.Model):
    title = models.CharField(max_length=20)

    def __str__(self):
        return self.title


class Comment(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    timestamp = models.DateTimeField(auto_now_add=True)
    content = models.TextField()
    post = models.ForeignKey(
        'Post', related_name='comments', on_delete=models.CASCADE)

    def __str__(self):
        return self.user.username


class Post(models.Model):
    id = models.AutoField(primary_key='true')
    title = models.CharField(max_length=100)
    overview = models.TextField(blank=True)
    timestamp = models.DateTimeField(auto_now_add=True)
    content = HTMLField(blank=True)

    author = models.ForeignKey(Author, on_delete=models.CASCADE)
    thumbnail = models.ImageField()
    categories = models.ManyToManyField(Category)
    featured = models.BooleanField()
    previous_post = models.ForeignKey(
        'self', related_name='previous', on_delete=models.SET_NULL, blank=True, null=True)
    next_post = models.ForeignKey(
        'self', related_name='next', on_delete=models.SET_NULL, blank=True, null=True)

    def __str__(self):
        return self.title

    def get_absolute_url(self):
        return reverse('post-detail', kwargs={
            'pk': self.id
        })

    def get_update_url(self):
        return reverse('post-update', kwargs={
            'pk': self.id
        })

    def get_delete_url(self):
        return reverse('post-delete', kwargs={
            'pk': self.id
        })

    @property
    def get_comments(self):
        return self.comments.all().order_by('-timestamp')

    @property
    def comment_count(self):
        return Comment.objects.filter(post=self).count()

    @property
    def view_count(self):
        return PostView.objects.filter(post=self).count()
