from django.shortcuts import render, redirect
import pandas as pd
import pickle
from prediksi.forms import PengirimanForm, DeliveryStatusForm, MarketForm, ArrivedForm, ShipmentReceivedForm, TypeForm
# from prediksi.forms import Pengiriman, DeliveryStatus, Market, Arrived, ShipmentReceived, Type
from prediksi.forms import Pengiriman, DeliveryStatus, Market, Type, Days_for_shipping_real, Days_for_shipment_scheduled, ShippingMode, ShippingDay, ShippingMonth,  ShippingYear
from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth.decorators import login_required
from django.db.models import Count

# Create your views here.


def index(request):
    context = {'a': 1}
    return render(request, 'index.html', context)

# Chart
def chart(request):
    labels = []
    data = []

    result = (Pengiriman.objects
    .values('Shipping_year')
    .annotate(dcount=Count('Shipping_year'))
    .order_by()
    )

    # Put data in Chart
    for predict in result:
        labels.append(predict.get("Shipping_year"))
        data.append(predict.get("dcount"))

    context = {'labels': labels, 'data': data}
    return render(request, 'chart.html', context)

# our result page view


def result(request):
    print(request)
    Type = int(request.POST.get('Type'))
    Days_for_shipping_real = int(request.POST.get('Days_for_shipping_real'))
    # shipment_received = int(request.POST.get('shipment_received'))
    # arrived = int(request.POST.get('arrived'))
    Days_for_shipment_scheduled = int(request.POST.get('Days_for_shipment_scheduled'))
    Benefit_per_order = int(request.POST.get('Benefit_per_order'))
    Sales_per_customer = int(request.POST.get('Sales_per_customer'))
    latitude = int(request.POST.get('latitude'))
    longitude = int(request.POST.get('longitude'))
    Shipping_mode = int(request.POST.get('Shipping_mode'))
    Market = int(request.POST.get('Market'))
    Delivery_status = int(request.POST.get('Delivery_status'))
    Shipping_day = int(request.POST.get('Shipping_day'))
    Shipping_month = int(request.POST.get('Shipping_month'))
    Shipping_year = int(request.POST.get('Shipping_year'))

    model = pd.read_pickle('./models/model.pickle')
    result = model.predict([[Type, Days_for_shipping_real, Days_for_shipment_scheduled, Benefit_per_order,
                           Sales_per_customer, latitude, longitude, Shipping_mode, Market, Delivery_status, Shipping_day, Shipping_month, Shipping_year]])

    # result = model.predict([[Type, shipment_received, arrived, Days_for_shipping_real, Days_for_shipment_scheduled, Benefit_per_order,
    #                        Sales_per_customer, Shipping_mode, Market, Delivery_status, Shipping_day, Shipping_month, Shipping_year]])
    return render(request, 'result.html', {'result': result})


def predict(request):
    type = Type.objects.all()
    days_for_shipping_real= Days_for_shipping_real.objects.all()
    days_for_shipment_scheduled = Days_for_shipment_scheduled.objects.all()
    market = Market.objects.all()
    deliveryStatus = DeliveryStatus.objects.all()
    shipping_mode= ShippingMode.objects.all()
    shipping_day= ShippingDay.objects.all()
    shipping_month= ShippingMonth.objects.all()
    shipping_year= ShippingYear.objects.all()
    
    
    # Days_for_shipping_real = Days_for_shipping_real.objects.all()
    context = {'a': 1, 'types': type, 'Days_for_shipping_reals': days_for_shipping_real, 'Days_for_shipment_scheduleds': days_for_shipment_scheduled,'markets': market, 'deliveryStatuss': deliveryStatus, 'shipping_modes': shipping_mode, 'shipping_days': shipping_day, 'shipping_months': shipping_month, 'shipping_years': shipping_year}
    return render(request, 'predict.html', context)


# def shipment_received(request):
#     shipmentreceived = ShipmentReceived.objects.all()
#     return render(request, "shipment_received.html", {'shipmentreceived': shipmentreceived})


# def arrived(request):
#     arrived = Arrived.objects.all()
#     return render(request, "arrived.html", {'arrived': arrived})


def type(request):
    type = Type.objects.all()
    return render(request, "type.html", {'type': type})


def market(request):
    market = Market.objects.all()
    return render(request, "market.html", {'market': market})


def delivery_status(request):
    deliveryStatus = DeliveryStatus.objects.all()
    return render(request, "delivery_status.html", {'deliveryStatus': deliveryStatus})

def shipping_mode(request):
    shipping_mode = ShippingMode.objects.all()
    return render(request, "shipping_mode.html", {'shipping_mode': shipping_mode})

def shipping_day(request):
    shipping_day = ShippingDay.objects.all()
    return render(request, "shipping_day.html", {'shipping_day': shipping_day})


def pgw(request):
    if request.method == "POST":
        form = PengirimanForm(request.POST)
        if form.is_valid():
            try:
                form.save()
                return redirect('/view')
            except:
                pass
    else:
        form = PengirimanForm()
    return render(request, 'haltambah.html', {'form': form})


def view(request):
    pengiriman = Pengiriman.objects.all()
    return render(request, "view.html", {'pengiriman': pengiriman})


def delete(request, id):
    pengiriman = Pengiriman.objects.get(id=id)
    pengiriman.delete()
    return redirect("/view")


def edit(request, id):
    pengiriman = Pengiriman.objects.get(id=id)
    return render(request, 'edit.html', {'pengiriman': pengiriman})


def update(request, id):
    pengiriman = Pengiriman.objects.get(id=id)
    form = PengirimanForm(instance=pengiriman)

    if request.method == 'POST':
        form = PengirimanForm(request.POST, instance=pengiriman)
        if form.is_valid():
            form.save()
            return redirect('/view')

    return render(request, 'view.html', {'form': form})


def indexView(request):
    return render(request, 'index.html')


@login_required
def dashboardView(request):
    return render(request, 'dashboard.html')


def registerView(request):
    if request.method == "POST":
        form = UserCreationForm(request.POST)
        if form.is_valid():
            form.save()
            return redirect('login_url')
    else:
        form = UserCreationForm()

    return render(request, 'registration/register.html', {'form': form})
