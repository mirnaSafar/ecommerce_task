part of 'cart_bloc.dart';

@freezed
class CartState with _$CartState {
  const factory CartState.loading() = _Loading;
  const factory CartState.addToCartLoading() = _AddToCartLoading;
  const factory CartState.loaded(List<ModifiedCart> carts) = _Loaded;
  const factory CartState.error(String message) = _Error;
  const factory CartState.addProductToCartSuccess(Cart cart) =
      _AddProductToCartSuccess;
}
