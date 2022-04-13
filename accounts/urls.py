from . import views
from django.urls import path

urlpatterns = [
    path('login/', views.login, name="login"),
    path('register/', views.register, name="register"),
    path('coder-dashboard/', views.coder_dashboard, name="coder_dashboard"),
    path('coder-edit/', views.coder_edit, name="coder_edit"),
    path('company-dashboard/', views.company_dashboard, name="company_dashboard"),
    # avoid views function named "logout"
    path('logout/', views.logout_user, name="logout"),
]
