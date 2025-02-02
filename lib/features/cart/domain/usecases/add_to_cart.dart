import 'package:dartz/dartz.dart';
import '../../../../core/common/errors/failures.dart';
import '../../../../core/common/usecase/usecase.dart';
import '../entities/cart.dart';
import '../repositories/cart_repository.dart';

class AddToCart implements Usecase<Cart, Cart> {
  final CartRepository repository;

  AddToCart({required this.repository});

  @override
  Future<Either<Failure, Cart>> call(Cart params) async {
    return await repository.addProductToCart(cart: params);
  }
}
