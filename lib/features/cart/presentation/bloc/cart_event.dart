part of 'cart_bloc.dart';

@freezed
class CartEvent with _$CartEvent {
  const factory CartEvent.getAllCarts({required int userId}) = _GetAllCarts;
  const factory CartEvent.addProductToCartEvent(Cart cart) =
      _AddProductToCartEvent;
}
