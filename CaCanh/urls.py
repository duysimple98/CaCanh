"""CaCanh URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/3.0/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path, include
from home import views 
from django.conf import settings
from django.conf.urls.static import static
from accounts import views as profiles_views
from django.contrib.auth import views as auth_views

app_name = 'home'

urlpatterns = [
    path('admin/', admin.site.urls),
    path('', views.index, name='trang chu'),

    path('home/aboutus', views.aboutus, name='GioiThieu'),

    path('home/tintuc', views.tintuc, name='post-list'),
    path('home/tintucdetail/<id>',views.post_detail, name='post-detail'),
  

    path('home/sanpham', views.products, name='Sản Phẩm'),

    path('home/lienhe', views.lienhe, name='Liên Hệ'),

    path('home/productcat/<int:id>', views.productcat, name='Danh mục sản phẩm'),

    path('home/productdetail/<int:id>/', views.productDetail, name='product_detail'),

    path('home/addcart', views.addcart,name='mua hang'),

    path ('home/shoppingcart',views.shoppingcart,name='dssp'),
    path('accounts/', include('django.contrib.auth.urls')),

    
    path ('home/register/',views.register, name='register'),
    path ('home/profile/',profiles_views.EditProfilesView.as_view(), name='profile'),

    path('login/',auth_views.LoginView.as_view(template_name="home/login.html"), name="login"),
    path('logout/',auth_views.LogoutView.as_view(next_page='/'),name='logout'),
   
     path('tinymce/', include('tinymce.urls')),

] + static(settings.STATIC_URL, document_root=settings.STATIC_ROOT)


