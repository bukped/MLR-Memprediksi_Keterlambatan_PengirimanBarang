from django.db import models
from django.forms import ModelForm, Textarea

# Create your models here.


class Pengiriman(models.Model):
    Type = models.IntegerField()
    # shipment_received = models.IntegerField()
    # arrived = models.IntegerField()
    Days_for_shipping_real = models.IntegerField()
    Days_for_shipment_scheduled = models.IntegerField()
    Benefit_per_order = models.FloatField()
    Sales_per_customer = models.FloatField()
    latitude = models.FloatField()
    longitude = models.FloatField()
    Shipping_mode = models.IntegerField()
    Market = models.IntegerField()
    Delivery_status = models.IntegerField()
    Shipping_day = models.IntegerField()
    Shipping_month = models.IntegerField()
    Shipping_year = models.IntegerField()

    class Meta:
        db_table = "prediksi_pengiriman"


class Type(models.Model):
    nama = models.TextField(max_length=20)
    deskripsi = models.TextField(max_length=30)

    class Meta:
        db_table = "type"
    
class Days_for_shipping_real(models.Model):
    tanggal = models.TextField(max_length=10)

    class Meta:
        db_table = "days_for_shipping_real"

class Days_for_shipment_scheduled(models.Model):
    tanggal = models.TextField(max_length=10)

    class Meta:
        db_table = "days_for_shipment_scheduled"

class Market(models.Model):
    nama = models.TextField(max_length=20)
    deskripsi = models.TextField(max_length=20)

    class Meta:
        db_table = "market"


class Arrived(models.Model):
    nama = models.TextField(max_length=40)
    deskripsi = models.TextField(max_length=40)

    class Meta:
        db_table = "arrived"


class DeliveryStatus(models.Model):
    nama = models.TextField(max_length=20)
    deskripsi = models.TextField(max_length=30)

    class Meta:
        db_table = "delivery_status"


class ShipmentReceived(models.Model):
    nama = models.TextField(max_length=40)
    deskripsi = models.TextField(max_length=40)

    class Meta:
        db_table = "shipment_received"

class ShippingMode(models.Model):
    nama = models.TextField(max_length=40)
    deskripsi = models.TextField(max_length=40)

    class Meta:
        db_table = "shipping_mode"
    
class ShippingDay(models.Model):
    tanggal = models.TextField(max_length=10)

    class Meta:
        db_table = "shipping_day"

class ShippingMonth(models.Model):
    bulan = models.TextField(max_length=10)

    class Meta:
        db_table = "shipping_month"

class ShippingYear(models.Model):
    tahun = models.TextField(max_length=10)

    class Meta:
        db_table = "shipping_year"