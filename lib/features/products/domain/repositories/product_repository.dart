import 'package:dartz/dartz.dart';

import '../../../../core/common/errors/failures.dart';
import '../entities/product.dart';

abstract class ProductRepository {
  Future<Either<Failure, List<Product>>> getProducts();
  Future<Either<Failure, List<String>>> getAllCategories();
  Future<Either<Failure, List<Product>>> getProductsByCategory(
      {required String category});
  Future<Either<Failure, Product>> getProductDetails({required int id});
  Future<Either<Failure, Product>> addProduct({required Product product});
}
