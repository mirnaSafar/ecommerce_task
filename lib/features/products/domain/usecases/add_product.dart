import 'package:dartz/dartz.dart';
import '../../../../core/common/errors/failures.dart';
import '../../../../core/common/usecase/usecase.dart';
import '../entities/product.dart';
import '../repositories/product_repository.dart';

class AddProduct implements Usecase<Product, Product> {
  final ProductRepository repository;

  AddProduct({required this.repository});

  @override
  Future<Either<Failure, Product>> call(Product params) async {
    return await repository.addProduct(product: params);
  }
}
