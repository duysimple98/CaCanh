from django.contrib import admin
from .models import Category,Product,Blog,ThuVien,LienHe,CategoryBL,Post,Author,Comment,Order,Tag
# Register your models here.

admin.site.register(Category)
admin.site.register(CategoryBL)
admin.site.register(Product)
admin.site.register(ThuVien)
admin.site.register(Blog)
admin.site.register(LienHe)
admin.site.register(Post)
admin.site.register(Author)
admin.site.register(Comment)
admin.site.register(Order)
admin.site.register(Tag)