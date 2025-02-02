import 'package:dartz/dartz.dart';
import '../../../../core/common/errors/failures.dart';
import '../../../../core/common/usecase/usecase.dart';
import '../entities/product.dart';
import '../repositories/product_repository.dart';

class GetAllProducts implements Usecase<List<Product>, NoParams> {
  final ProductRepository repository;

  GetAllProducts({required this.repository});

  @override
  Future<Either<Failure, List<Product>>> call(NoParams params) async {
    return await repository.getProducts();
  }
}
