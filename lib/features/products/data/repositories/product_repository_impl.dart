import 'package:dartz/dartz.dart';
import '../../../../core/common/errors/exceptions.dart';
import '../../../../core/common/errors/failures.dart';
import '../../../../core/network/network_info.dart';
import '../datasources/products_local_data_source.dart';
import '../datasources/products_remote_data_source.dart';
import '../models/product_model.dart';
import '../../domain/entities/product.dart';
import '../../domain/repositories/product_repository.dart';

class ProductRepositoryImpl extends ProductRepository {
  final ProductRemoteDataSource remoteDataSource;
  final ProductsLocalDataSource localDataSource;
  final NetworkInfo networkInfo;

  ProductRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, List<Product>>> getProducts() async {
    return await _processProductMethods(
      remoteFunction: () async {
        final products = await remoteDataSource.getProducts();
        await localDataSource.cacheProducts(products: products);
        return products;
      },
      localFunction: () => localDataSource.getProducts(),
    );
  }

  @override
  Future<Either<Failure, Product>> getProductDetails({required int id}) async {
    return await _processProductMethods(
      remoteFunction: () => remoteDataSource.getProductDetails(id: id),
      // localFunction: () => localDataSource.getProduct(id: id),
    );
  }

  @override
  Future<Either<Failure, List<String>>> getAllCategories() async {
    return await _processProductMethods(
      remoteFunction: () async {
        final categories = await remoteDataSource.getAllCategories();
        await localDataSource.cacheCategories(categories: categories);
        return categories;
      },
      localFunction: () => localDataSource.getCategories(),
    );
  }

  @override
  Future<Either<Failure, List<Product>>> getProductsByCategory(
      {required String category}) async {
    return await _processProductMethods(remoteFunction: () {
      return remoteDataSource.getProductsByCategory(category: category);
    });
  }

  @override
  Future<Either<Failure, Product>> addProduct(
      {required Product product}) async {
    return await _processProductMethods(
      remoteFunction: () async {
        final addedProduct = await remoteDataSource.addProduct(
          product: ProductModel.fromProduct(product),
        );
        return addedProduct;
      },
      // cacheFunction: () async {
      //   await localDataSource.addProductToCache(
      //       product: ProductModel.toProductModel(product));
      // },
    );
  }

  Future<Either<Failure, T>> _processProductMethods<T>({
    required Future<T> Function() remoteFunction,
    Future<T> Function()? localFunction,
    Future<void> Function()? cacheFunction,
  }) async {
    if (await networkInfo.isConnected) {
      return await _handleRemoteCall(remoteFunction, cacheFunction);
    } else {
      return await _handleLocalCall(localFunction);
    }
  }

  Future<Either<Failure, T>> _handleRemoteCall<T>(
      Future<T> Function() remoteFunction,
      Future<void> Function()? cacheFunction) async {
    try {
      final result = await remoteFunction();
      if (cacheFunction != null) await cacheFunction();
      return Right(result);
    } on ServerException {
      return Left(ServerFailure());
    }
  }

  Future<Either<Failure, T>> _handleLocalCall<T>(
      Future<T> Function()? localFunction) async {
    if (localFunction == null) return Left(OfflineFailure());

    try {
      final result = await localFunction();
      return Right(result);
    } on CacheException {
      return Left(CacheFailure());
    } on OfflineException {
      return Left(OfflineFailure());
    }
  }
}
