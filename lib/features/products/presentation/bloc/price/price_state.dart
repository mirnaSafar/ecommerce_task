part of 'price_bloc.dart';

@freezed
class PriceState with _$PriceState {
  const factory PriceState.initial(double price) = _Initial;
  const factory PriceState.updated(double price) = _Updated;
}
