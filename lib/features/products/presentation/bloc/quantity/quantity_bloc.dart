import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'quantity_bloc.freezed.dart';
part 'quantity_event.dart';
part 'quantity_state.dart';

class QuantityBloc extends Bloc<QuantityEvent, QuantityState> {
  QuantityBloc() : super(_Initial(0)) {
    on<QuantityEvent>((event, emit) {
      event.when(
        setInitialQuantity: (quantity) => emit(QuantityState.initial(quantity)),
        updateQuantity: (quantity) => emit(QuantityState.initial(quantity)),
      );
    });
  }
}
