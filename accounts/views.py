from django.shortcuts import render,redirect
from django.contrib.auth.models import User,auth
from django.contrib.auth.views import LoginView
from django.views.generic import TemplateView,FormView
from django.contrib.auth.mixins import LoginRequiredMixin
from django.contrib.auth.forms import UserCreationForm,UsernameField
from django import forms

from django.http import HttpResponseRedirect
# Create your views herd
class SiteLoginView(LoginView):
    template_name= 'home/login.html'



class EditProfilesView(LoginRequiredMixin,TemplateView):
    template_name ='home/profile.html'
