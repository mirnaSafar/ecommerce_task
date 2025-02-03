part of 'calc_total_bloc.dart';

@freezed
class CalcTotalEvent with _$CalcTotalEvent {
  const factory CalcTotalEvent.calcTotal({required List<ModifiedCart> carts}) =
      _CalcTotal;
}
