import '../../features/cart/data/models/cart_model.dart';
import '../../features/products/domain/usecases/get_product_details.dart';

import '../../features/cart/domain/entities/cart.dart';

class CartService {
  final GetProductDetails getProductDetails;

  CartService({required this.getProductDetails});

  static double calcTotal(List<ModifiedCart> carts) {
    double totalPrice = 0.0;
    for (var cart in carts) {
      for (var cartProduct in cart.products!) {
        totalPrice += (cartProduct.product?.price ?? 0) * cartProduct.quantity!;
      }
    }
    return totalPrice;
  }

  Future<List<ModifiedCart>> mapCartsToFullDetails(List<Cart> carts) async {
    List<ModifiedCart> cartsWithFullProductInfo = [];
    for (var cart in carts) {
      final singleCartWithFullProducts =
          await getProductForEachProductIDInCart(cart);
      cartsWithFullProductInfo.add(ModifiedCart(
        id: cart.id,
        userId: cart.userId,
        date: cart.date,
        products: singleCartWithFullProducts,
      ));
    }
    return cartsWithFullProductInfo;
  }

  Future<List<CartProduct>> getProductForEachProductIDInCart(Cart cart) async {
    List<CartProduct> singleCartWithFullProducts = [];
    for (var product in cart.products!) {
      final productResult = await getProductDetails(product.productId!);
      productResult.fold(
        (failure) =>
            // ignore: avoid_print
            print("Failed to fetch product details: ${product.productId}"),
        (productDetails) {
          singleCartWithFullProducts.add(
              CartProduct(product: productDetails, quantity: product.quantity));
        },
      );
    }
    return singleCartWithFullProducts;
  }
}
