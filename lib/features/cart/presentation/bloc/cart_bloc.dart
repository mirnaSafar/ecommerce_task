import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/common/errors/failures.dart';
import '../../../../core/common/usecase/usecase.dart';
import '../../../../core/utils/utils.dart';
import '../../domain/entities/cart.dart';
import '../../domain/usecases/add_to_cart.dart';
import '../../domain/usecases/get_carts.dart';

part 'cart_bloc.freezed.dart';
part 'cart_event.dart';
part 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  final GetCarts getCarts;
  final AddToCart addToCart;

  CartBloc({required this.addToCart, required this.getCarts})
      : super(CartState.loading()) {
    on<CartEvent>(
      (event, emit) async {
        await event.map(
            getAllCarts: (_) async => await _onGetAllCartsEvent(emit),
            addProductToCartEvent: (event) async =>
                await _onAddProductToCartEvent(event, emit));
      },
    );
  }
  Future<void> _onGetAllCartsEvent(Emitter<CartState> emit) async {
    emit(CartState.loading());

    final result = await getCarts(NoParams());
    emit(await _resultToState(result));
  }

  Future<void> _onAddProductToCartEvent(
      _AddProductToCartEvent event, Emitter<CartState> emit) async {
    emit(CartState.addToCartLoading());

    final result = await addToCart(event.cart);
    result.fold(
      (failure) => emit(CartState.error(mapFailureToMessage(failure: failure))),
      (cart) => emit(CartState.addProductToCartSuccess(cart)),
    );
  }

  Future<CartState> _resultToState(
      Either<Failure, List<ModifiedCart>> result) async {
    return result.fold(
      (failure) => CartState.error(mapFailureToMessage(failure: failure)),
      (carts) async {
        return CartState.loaded(carts);
      },
    );
  }
}
