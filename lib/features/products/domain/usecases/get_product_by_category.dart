import 'package:dartz/dartz.dart';
import '../../../../core/common/errors/failures.dart';
import '../../../../core/common/usecase/usecase.dart';
import '../entities/product.dart';
import '../repositories/product_repository.dart';

class GetProductsByCategory extends Usecase<List<Product>, String> {
  final ProductRepository repository;
  GetProductsByCategory(this.repository);
  @override
  Future<Either<Failure, List<Product>>> call(String params) async {
    return await repository.getProductsByCategory(category: params);
  }
}
