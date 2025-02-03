import 'package:bloc/bloc.dart';
import 'package:ecommerce_task/features/cart/domain/entities/cart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'calc_total_event.dart';
part 'calc_total_state.dart';
part 'calc_total_bloc.freezed.dart';

class CalcTotalBloc extends Bloc<CalcTotalEvent, CalcTotalState> {
  CalcTotalBloc() : super(_Initial(total: 0.0)) {
    on<CalcTotalEvent>((event, emit) {
      event.when(
        calcTotal: (carts) {
          _ocCalcTotalEvent(carts, emit);
        },
      );
    });
  }

  void _ocCalcTotalEvent(
      List<ModifiedCart> carts, Emitter<CalcTotalState> emit) {
    double totalPrice = 0.0;
    for (var cart in carts) {
      for (var cartProduct in cart.products!) {
        totalPrice += (cartProduct.product?.price ?? 0) * cartProduct.quantity!;
      }
    }
    emit(CalcTotalState.initial(total: totalPrice));
  }
}
