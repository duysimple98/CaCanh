# Create your views here.
from django.db.models import Count, Q
from django.http import HttpResponse, HttpResponseRedirect
from home.models import Product, Category, Blog, LienHe, ThuVien
from django.contrib.auth.models import User, auth
from home import forms
from django.conf import settings
from django.contrib import messages
from django.core.exceptions import ObjectDoesNotExist
from django.contrib.auth.decorators import login_required
from django.contrib.auth.mixins import LoginRequiredMixin
from django.shortcuts import render, get_object_or_404, reverse, redirect
from django.views.generic import ListView, DetailView, View, CreateView, UpdateView, DeleteView
from django.utils import timezone
from home import models
from maketing.models import Signup
from django.db.models import Count, Q
from django.contrib import messages
from django.core.paginator import Paginator, EmptyPage, PageNotAnInteger
from .forms import CommentForm, PostForm, RegistrationForm
from home.models import Post, Author, PostView


# Create your views here.
def index(request):
    latest = Post.objects.order_by('-timestamp')[0:3]

    if request.method == "POST":
        print("here")
        email = request.POST["email"]
        new_signup = Signup()
        new_signup.email = email
        new_signup.save()

    context = {

        'latest': latest,

    }
    return render(request, 'home/main.html', context)


def aboutus(request):
    return render(request, 'home/aboutus.html')


def tintuc(request):
    most_recent = Post.objects.order_by('-timestamp')[:3]
    post_list = Post.objects.all()
    paginator = Paginator(post_list, 4)
    page_request_var = 'page'
    page = request.GET.get(page_request_var)
    try:
        paginated_queryset = paginator.page(page)
    except PageNotAnInteger:
        paginated_queryset = paginator.page(1)
    except EmptyPage:
        paginated_queryset = paginator.page(paginator.num_pages)

    context = {
        'queryset': paginated_queryset,
        'page_request_var': page_request_var,
        'most_recent': most_recent,

    }
    return render(request, 'home/tintuc.html', context)


def post_detail(request, id):
    most_recent = Post.objects.order_by('-timestamp')[:3]
    post_list = Post.objects.all()
    paginator = Paginator(post_list, 4)
    post = get_object_or_404(Post, id=id)

    form = CommentForm(request.POST or None)
    if request.method == "POST":
        if form.is_valid():
            form.instance.user = request.user
            form.instance.post = post
            form.save()
            return redirect(reverse("post-detail", kwargs={
                'id': post.id
            }))
    context = {
        'post': post,
        'form': form,
        'most_recent': most_recent,
    }
    return render(request, 'home/tintucdetail.html', context)


def products(request):
    listCategory = Category.objects.all()
    products = Product.objects.all()
    return render(request, 'home/sanpham.html', {'categories': listCategory, 'products': products})


def lienhe(request):
    return render(request, 'home/lienhe.html')


def productcat(request, id):
    listCategory = Category.objects.all()
    productCat = Product.objects.filter(cat_id=id)

    return render(request, 'home/productcat.html', {'categories': listCategory, 'productCat': productCat})


def productDetail(request, id):
    detail = Product.objects.get(pro_id=id)
    otherPro = Product.objects.filter(cat_id=detail.cat_id)[:8]
    return render(request, 'home/productdetail.html', {'detail': detail, 'otherPro': otherPro})


cart = {}


def addcart(request):
    if request.is_ajax():
        id = request.POST.get(' id')
        num = request.POST.get('num')
        proDetail = Product.objects.get(pro_id=id)
        if id in cart.keys():
            itemCart = {
                'name': proDetail.pro_name,
                'price': proDetail.pro_price,
                'image': str(proDetail.pri_image),
                'num': int(cart[id]['num']) + 1,
            }
        else:
            itemCart = {
                'name': proDetail.pro_name,
                'price': proDetail.pro_price,
                'image': str(proDetail.pri_image),
                'num': num,
            }
            cart[id] = itemCart
            request.session['cart'] = cart
            cartInfo = request.session['cart']
        html = render_to_string('home/addcart.html', {'cart': cartInfo})
    return HttpResponse(html)


def shoppingcart(request):
    total = 0;
    carts = request.session['cart']
    for value in carts.items():
        total += int(value['price'] * int(value['num']))
    return render(request, 'home/shoppingcart.html', {'total': total})


def register(request):
    form = RegistrationForm()
    if request.method == 'POST':
        form = RegistrationForm(request.POST)
        if form.is_valid():
            form.save()
            return HttpResponseRedirect('/')
    return render(request, 'home/register.html', {'form': form})
