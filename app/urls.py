from django.urls import path, include
from django.contrib.auth import views
from app.views import hm
from django.views.decorators.csrf import ensure_csrf_cookie

urlpatterns = [
    path('', hm, name='index'),
    path('login', ensure_csrf_cookie(views.LoginView.as_view())),
    path('', include('django.contrib.auth.urls')),
]