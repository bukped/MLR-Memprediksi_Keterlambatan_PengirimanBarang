"""prediksigaji URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/3.2/topics/http/urls/
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
from prediksi import views
from django.conf.urls import url
from django.conf import settings

urlpatterns = [
    path('admin/', admin.site.urls),
    url('^$', views.index, name='homepage'),
    url('result', views.result, name='result'),
    url('predict', views.predict, name='predict'),
    url('chart', views.chart, name='chart'),

    path('prediksi/', include('prediksi.urls')),
    path('pgw/', views.pgw),
    path('view/', views.view),
    # path('shipment_received/', views.shipment_received),
    # path('arrived/', views.arrived),
    path('type/', views.type),
    path('market/', views.market),
    path('delivery_status/', views.delivery_status),
    path('shipping_mode/', views.shipping_mode),
    path('shipping_day/', views.shipping_day),
    path('delete/<int:id>', views.delete),
    path('edit/<int:id>', views.edit),
    path('update/<int:id>', views.update),
]
