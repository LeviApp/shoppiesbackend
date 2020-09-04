from django.urls import path
from shoppies.api.views import awards_api, award_api, awards_all_api

app_name = 'shoppies'
urlpatterns = [
    path(f'awards/', awards_api, name='awards'),
    path(f'awards/<str:pk>/', award_api, name='award'),
    path(f'awards/<str:pk>/delete', award_api, name='delete_award'),
    path(f'allawards/', awards_all_api, name='all_awards'),
]