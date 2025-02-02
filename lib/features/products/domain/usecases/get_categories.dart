import 'package:dartz/dartz.dart';
import '../../../../core/common/errors/failures.dart';
import '../../../../core/common/usecase/usecase.dart';
import '../repositories/product_repository.dart';

class GetAllCategories extends Usecase<List<String>, NoParams> {
  final ProductRepository repository;
  GetAllCategories(this.repository);
  @override
  Future<Either<Failure, List<String>>> call(NoParams params) async {
    return await repository.getAllCategories();
  }
}
