import '../../../../core/common/errors/exceptions.dart';
import '../../../../core/shared_preference_repository.dart';
import '../models/cart_model.dart';

abstract class CartLocalDataSource {
  Future<List<ModifiedCartModel>> getCart();
  Future<void> cacheCart({required List<ModifiedCartModel> cart});
}

class CartLocalDataSourceImpl implements CartLocalDataSource {
  final SharedPreferenceRepository sharedpreferences;

  CartLocalDataSourceImpl({required this.sharedpreferences});

  @override
  Future<List<ModifiedCartModel>> getCart() async {
    final cartList = sharedpreferences.getCartList();
    if (cartList != null) {
      if (cartList.isEmpty) throw CacheException();
      return cartList;
    } else {
      throw OfflineException();
    }
  }

  @override
  Future<void> cacheCart({required List<ModifiedCartModel> cart}) async {
    sharedpreferences.setCartList(cart);
  }
}
