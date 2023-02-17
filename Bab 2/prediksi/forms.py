from django import forms
from prediksi.models import Pengiriman, Arrived, DeliveryStatus, Type, Days_for_shipping_real, Days_for_shipment_scheduled, ShipmentReceived, Market, ShippingMode, ShippingDay, ShippingMonth, ShippingYear


class PengirimanForm(forms.ModelForm):
    class Meta:
        model = Pengiriman
        fields = "__all__"


class ArrivedForm(forms.ModelForm):
    class Meta:
        model = Arrived
        fields = "__all__"


class DeliveryStatusForm(forms.ModelForm):
    class Meta:
        model = DeliveryStatus
        fields = "__all__"


class TypeForm(forms.ModelForm):
    class Meta:
        model = Type
        fields = "__all__"

class Days_for_shipping_realForm(forms.ModelForm):
    class Meta:
        model = Days_for_shipping_real
        fields = "__all__"

class Days_for_shipment_scheduledForm(forms.ModelForm):
    class Meta:
        model = Days_for_shipment_scheduled
        fields = "__all__"


class ShipmentReceivedForm(forms.ModelForm):
    class Meta:
        model = ShipmentReceived
        fields = "__all__"

class MarketForm(forms.ModelForm):
    class Meta:
        model = Market
        fields = "__all__"

class ShippingModeForm(forms.ModelForm):
    class Meta:
        model = ShippingMode
        fields = "__all__"

class ShippingDayForm(forms.ModelForm):
    class Meta:
        model = ShippingDay
        fields = "__all__"

class ShippingMonthForm(forms.ModelForm):
    class Meta:
        model = ShippingMonth
        fields = "__all__"