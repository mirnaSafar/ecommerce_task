part of 'price_bloc.dart';

@freezed
class PriceEvent with _$PriceEvent {
  const factory PriceEvent.setInitialPrice(double price) = _SetInitialPrice;
  const factory PriceEvent.updatePrice(double price, int quantity) =
      _UpdatePrice;
}
