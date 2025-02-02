import '../../../../core/services/cart_service.dart';
import '../../domain/entities/cart.dart';
import 'package:http/http.dart' as http;

import '../../../../core/common/enums.dart';
import '../../../../core/common/errors/exceptions.dart';
import '../../../../core/network/common_response.dart';
import '../../../../core/network/endpoints/cart_endpoints.dart';
import '../../../../core/network/network_utils.dart';
import '../models/cart_model.dart';

abstract class CartRemoteDataSource {
  Future<List<ModifiedCart>> getCart();
  Future<CartModel> addProductToCart({required CartModel cart});
}

class CartRemoteDataSourceImpl implements CartRemoteDataSource {
  final CartService cartService;

  final http.Client client;
  CartRemoteDataSourceImpl(this.client, {required this.cartService});

  @override
  Future<List<ModifiedCart>> getCart() =>
      _getCartFromUrl(CartEndpoints.getAllCarts);

  Future<List<ModifiedCart>> _getCartFromUrl(String url) async {
    try {
      final response = await NetworkUtil(client: client)
          .sendRequest(type: RequestType.GET, url: url);

      CommonResponse<List<dynamic>> commonResponse =
          CommonResponse.fromJson(response);

      if (commonResponse.getStatus) {
        final carts = commonResponse.data!
            .map((json) => CartModel.fromJson(json))
            .toList();
        return await cartService.mapCartsToFullDetails(carts);
      } else {
        throw ServerException();
      }
    } catch (e) {
      throw ServerException();
    }
  }

  @override
  Future<CartModel> addProductToCart({required CartModel cart}) {
    return _addToCartFromUrl(CartEndpoints.addToCart, cart);
  }

  Future<CartModel> _addToCartFromUrl(String url, CartModel cart) async {
    try {
      final response = await NetworkUtil(client: client).sendRequest(
        type: RequestType.POST,
        url: url,
        body: {
          "userId": cart.userId,
          "date": cart.date ?? '',
          "products":
              cart.products!.map((product) => product.toJson()).toList(),
        },
      );

      CommonResponse<dynamic> commonResponse =
          CommonResponse.fromJson(response);

      if (commonResponse.getStatus && commonResponse.data != null) {
        return CartModel.fromJson(commonResponse.data);
      } else {
        throw ServerException();
      }
    } catch (e) {
      throw ServerException();
    }
  }
}
