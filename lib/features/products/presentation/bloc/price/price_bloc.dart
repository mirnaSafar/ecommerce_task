import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'price_bloc.freezed.dart';
part 'price_event.dart';
part 'price_state.dart';

class PriceBloc extends Bloc<PriceEvent, PriceState> {
  PriceBloc() : super(_Initial(0.0)) {
    on<PriceEvent>((event, emit) {
      event.when(
        setInitialPrice: (price) => emit(PriceState.initial(price)),
        updatePrice: (price, quantity) {
          final newPrice = price * quantity;
          emit(PriceState.updated(newPrice));
        },
      );
    });
  }
}
