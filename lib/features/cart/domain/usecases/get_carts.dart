import 'package:dartz/dartz.dart';
import '../../../../core/common/errors/failures.dart';
import '../../../../core/common/usecase/usecase.dart';
import '../entities/cart.dart';
import '../repositories/cart_repository.dart';

class GetCarts implements Usecase<List<ModifiedCart>, NoParams> {
  final CartRepository repository;

  GetCarts({required this.repository});

  @override
  Future<Either<Failure, List<ModifiedCart>>> call(NoParams params) async {
    return await repository.getCarts();
  }
}
