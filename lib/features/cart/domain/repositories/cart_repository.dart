import 'package:dartz/dartz.dart';
import '../../../../core/common/errors/failures.dart';
import '../entities/cart.dart';

abstract class CartRepository {
  Future<Either<Failure, List<ModifiedCart>>> getCarts();
  Future<Either<Failure, Cart>> addProductToCart({required Cart cart});
}
