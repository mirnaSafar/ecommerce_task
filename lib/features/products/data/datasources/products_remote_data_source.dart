import 'package:http/http.dart' as http;

import '../../../../core/common/enums.dart';
import '../../../../core/common/errors/exceptions.dart';
import '../../../../core/network/common_response.dart';
import '../../../../core/network/endpoints/products_endpoints.dart';
import '../../../../core/network/network_utils.dart';
import '../models/product_model.dart';

abstract class ProductRemoteDataSource {
  Future<List<ProductModel>> getProducts();
  Future<ProductModel> getProductDetails({required int id});
  Future<ProductModel> addProduct({required ProductModel product});

  Future<List<String>> getAllCategories();
  Future<List<ProductModel>> getProductsByCategory({required String category});
}

class ProductRemoteDataSourceImpl implements ProductRemoteDataSource {
  final http.Client client;

  ProductRemoteDataSourceImpl({required this.client});

  @override
  Future<List<ProductModel>> getProducts() =>
      _getProductsfromUrl(ProductsEndpoints.getAll);

  @override
  Future<List<ProductModel>> getProductsByCategory(
          {required String category}) =>
      _getProductsfromUrl(
          '${ProductsEndpoints.getProductsByCategory}$category');

  @override
  Future<ProductModel> getProductDetails({required int id}) =>
      _getProductDetailsfromUrl("${ProductsEndpoints.getProductDetails}$id");
  @override
  Future<ProductModel> addProduct({required ProductModel product}) =>
      _addProductfromUrl(ProductsEndpoints.addProduct, product);

  @override
  Future<List<String>> getAllCategories() {
    return _getCategoriesfromUrl(ProductsEndpoints.getAllCategories);
  }

  Future<List<ProductModel>> _getProductsfromUrl(String url) async {
    final response = await NetworkUtil(client: client)
        .sendRequest(type: RequestType.GET, url: url);

    final commonResponse = CommonResponse<List<dynamic>>.fromJson(response);

    if (commonResponse.getStatus) {
      return commonResponse.data!.map((e) => ProductModel.fromJson(e)).toList();
    } else {
      throw ServerException();
    }
  }

  Future<ProductModel> _getProductDetailsfromUrl(String url) async {
    final response = await NetworkUtil(client: client)
        .sendRequest(type: RequestType.GET, url: url);

    final commonResponse = CommonResponse<dynamic>.fromJson(response);

    if (commonResponse.getStatus && commonResponse.data != null) {
      return ProductModel.fromJson(commonResponse.data!);
    } else {
      throw ServerException();
    }
  }

  Future<ProductModel> _addProductfromUrl(
      String url, ProductModel product) async {
    final response = await NetworkUtil(client: client).sendRequest(
      type: RequestType.POST,
      url: url,
      body: {
        "title": product.title,
        "price": product.price,
        "description": product.description,
        "image": product.image,
        "category": product.category
      },
    );

    final commonResponse = CommonResponse<dynamic>.fromJson(response);

    if (commonResponse.getStatus && commonResponse.data != null) {
      return ProductModel.fromJson(commonResponse.data!);
    } else {
      throw ServerException();
    }
  }

  Future<List<String>> _getCategoriesfromUrl(String url) async {
    final response = await NetworkUtil(client: client)
        .sendRequest(type: RequestType.GET, url: url);

    final commonResponse = CommonResponse<List<dynamic>>.fromJson(response);

    if (commonResponse.getStatus && commonResponse.data != null) {
      return commonResponse.data!.map((e) => e.toString()).toList();
    } else {
      throw ServerException();
    }
  }
}
