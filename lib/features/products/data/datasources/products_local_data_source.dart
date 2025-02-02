import '../../../../core/common/errors/exceptions.dart';

import '../../../../core/shared_preference_repository.dart';
import '../models/product_model.dart';

abstract class ProductsLocalDataSource {
  Future<List<ProductModel>> getProducts();
  // Future<ProductModel> getProduct({required int id});
  Future<void> cacheProducts({required List<ProductModel> products});
  Future<void> cacheCategories({required List<String> categories});
  Future<List<String>> getCategories();

  // Future<void> addProductToCache({required ProductModel product});
}

class ProductsLocalDataSourceImpl implements ProductsLocalDataSource {
  final SharedPreferenceRepository sharedpreferences;

  ProductsLocalDataSourceImpl({required this.sharedpreferences});

  @override
  Future<List<ProductModel>> getProducts() async {
    final productsList = sharedpreferences.getProductsList();
    if (productsList != null) {
      if (productsList.isEmpty) throw CacheException();
      return productsList;
    } else {
      throw OfflineException();
    }
  }

  @override
  Future<void> cacheProducts({required List<ProductModel> products}) async {
    return sharedpreferences.setProductsList(products);
  }

  @override
  Future<void> cacheCategories({required List<String> categories}) async {
    return sharedpreferences.cacheCategoriesList(categories);
  }

  @override
  Future<List<String>> getCategories() async {
    final categories = sharedpreferences.getCategoriesList();
    if (categories != null) {
      if (categories.isEmpty) throw CacheException();
      return categories;
    } else {
      throw OfflineException();
    }
  }
}
