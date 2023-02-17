# Generated by Django 3.2.9 on 2023-01-23 05:55

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Pengiriman',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('Type', models.IntegerField()),
                ('shipment_received', models.IntegerField()),
                ('arrived', models.IntegerField()),
                ('Days_for_shipping_real', models.IntegerField()),
                ('Days_for_shipment_scheduled', models.IntegerField()),
                ('Benefit_per_order', models.FloatField()),
                ('Sales_per_customer', models.FloatField()),
                ('Shipping_mode', models.IntegerField()),
                ('Market', models.IntegerField()),
                ('Delivery_status', models.IntegerField()),
                ('Shipping_day', models.IntegerField()),
                ('Shipping_month', models.IntegerField()),
                ('Shipping_year', models.IntegerField()),
            ],
        ),
    ]