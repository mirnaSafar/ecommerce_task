import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

import '../features/cart/data/models/cart_model.dart';
import '../features/products/data/models/product_model.dart';
import 'common/enums.dart';

class SharedPreferenceRepository {
  final SharedPreferences sharedPreference;
  SharedPreferenceRepository({required this.sharedPreference});

  //!--keys--

  final String CACHED_PRODUCTS_LIST = 'CACHED_PRODUCTS_LIST';
  final String CACHED_CART_LIST = "CACHED_CART_LIST";
  final String CACHED_CATEGORIES_LIST = "CACHED_CATEGORIES_LIST";

  void setProductsList(List<ProductModel> products) {
    _setPreference(
        key: CACHED_PRODUCTS_LIST,
        dataType: DataType.STRING,
        value: json.encode(products));
  }

  List<ProductModel>? getProductsList() {
    if (sharedPreference.containsKey(CACHED_PRODUCTS_LIST)) {
      final List<dynamic> products =
          json.decode(_getPreference(key: CACHED_PRODUCTS_LIST) ?? '[]');
      return products.map((e) => ProductModel.fromJson(e)).toList();
    }
    return null;
  }

  void cacheCategoriesList(List<String> categories) {
    _setPreference(
        key: CACHED_CATEGORIES_LIST,
        dataType: DataType.STRINGLIST,
        value: categories);
  }

  List<String>? getCategoriesList() {
    if (sharedPreference.containsKey(CACHED_CATEGORIES_LIST)) {
      final List<String> categories =
          _getPreference(key: CACHED_CATEGORIES_LIST) ?? [];
      return categories;
    } else {
      return null;
    }
  }

  Future<void> addProductToCache(ProductModel product) async {
    final cachedProducts = getProductsList() ?? [];
    cachedProducts.add(product);
    setProductsList(cachedProducts);
  }

  // ProductModel? getProduct({required int id}) {
  //   if (sharedPreference.containsKey(CACHED_PRODUCTS_LIST)) {
  //     final List<dynamic> products =
  //         json.decode(_getPreference(key: CACHED_PRODUCTS_LIST));
  //     if (products.isNotEmpty) {
  //       return products
  //           .firstWhereOrNull((e) => ProductModel.fromJson(e).id == id);
  //     } else {
  //       return null;
  //     }
  //   } else {
  //     return null;
  //   }
  // }

  void setCartList(List<ModifiedCartModel> cart) {
    _setPreference(
      key: CACHED_CART_LIST,
      dataType: DataType.STRING,
      value: json.encode(cart.map((c) => c.toJson()).toList()),
    );
  }

  List<ModifiedCartModel>? getCartList() {
    if (sharedPreference.containsKey(CACHED_CART_LIST)) {
      final List<dynamic> cart =
          json.decode(_getPreference(key: CACHED_CART_LIST));
      if (cart.isNotEmpty) {
        return cart.map((e) => ModifiedCartModel.fromJson(e)).toList();
      } else {
        return <ModifiedCartModel>[];
      }
    } else {
      return null;
    }
  }

  Future<void> _setPreference({
    required DataType dataType,
    required String key,
    required dynamic value,
  }) async {
    switch (dataType) {
      case DataType.INT:
        await sharedPreference.setInt(key, value);
        break;
      case DataType.BOUBLE:
        await sharedPreference.setDouble(key, value);
        break;
      case DataType.STRINGLIST:
        await sharedPreference.setStringList(key, value);
        break;
      case DataType.STRING:
        await sharedPreference.setString(key, value);
        break;
      case DataType.BOOLEAN:
        await sharedPreference.setBool(key, value);
        break;
    }
  }

  dynamic _getPreference({required String key}) {
    try {
      return sharedPreference.get(key);
    } catch (e) {
      return null;
    }
  }
}
