part of 'quantity_bloc.dart';

@freezed
class QuantityEvent with _$QuantityEvent {
  const factory QuantityEvent.setInitialQuantity(int quantity) =
      _SetInitialQuantity;
  const factory QuantityEvent.updateQuantity(int quantity) = _UpdatedQuantity;
}
