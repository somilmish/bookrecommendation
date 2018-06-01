from django.conf.urls import url
from home import views
from django.contrib.auth import views as auth_views

urlpatterns = [
    url(r'^$', views.home, name='home'),
    url(r'login/', views.login_view,name='loginuser'),
    url(r'register/', views.register, name='register'),
    url(r'logout/', views.logout_view,name='logout'),
    url(r'password_reset/$', auth_views.password_reset, name='reset'),
    url(r'^password_reset/done/$', auth_views.password_reset_done, name='password_reset_done'),
    url(r'^reset/(?P<uidb64>[0-9A-Za-z_\-]+)/(?P<token>[0-9A-Za-z]{1,13}-[0-9A-Za-z]{1,20})/$',
        auth_views.password_reset_confirm, name='password_reset_confirm'),
    url(r'^reset/done/$', auth_views.password_reset_complete, name='password_reset_complete'),
    url(r'user/', views.user, name="user"),
    url(r'genre', views.genre, name='genre'),
    url(r'book/', views.book, name='book'),
]