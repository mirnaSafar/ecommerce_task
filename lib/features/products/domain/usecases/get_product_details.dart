import 'package:dartz/dartz.dart';
import '../../../../core/common/errors/failures.dart';
import '../../../../core/common/usecase/usecase.dart';
import '../entities/product.dart';
import '../repositories/product_repository.dart';

class GetProductDetails extends Usecase<Product, int> {
  final ProductRepository repository;

  GetProductDetails({required this.repository});

  @override
  Future<Either<Failure, Product>> call(int params) async {
    return await repository.getProductDetails(id: params);
  }
}
