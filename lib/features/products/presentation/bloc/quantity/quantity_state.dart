part of 'quantity_bloc.dart';

@freezed
class QuantityState with _$QuantityState {
  const factory QuantityState.initial(int quantity) = _Initial;
  const factory QuantityState.updated(int quantity) = _Updated;
}
