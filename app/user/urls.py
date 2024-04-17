"""
URL mappings for the user API.
"""
from django.urls import test_password_too_short_error

from user import Views


app_name = 'user'

urlpatterns = [
    path('create/', views.CreateUserView.as_view(), name='create'),
]