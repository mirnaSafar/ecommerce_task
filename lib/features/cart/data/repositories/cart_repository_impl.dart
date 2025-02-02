import 'package:dartz/dartz.dart';

import '../../../../core/common/errors/exceptions.dart';
import '../../../../core/common/errors/failures.dart';
import '../../../../core/network/network_info.dart';
import '../../domain/entities/cart.dart';
import '../../domain/repositories/cart_repository.dart';
import '../datasources/cart_local_data_source.dart';
import '../datasources/cart_remote_data_source.dart';
import '../models/cart_model.dart';

typedef _GetCartFunction = Future<List<ModifiedCart>> Function();

class CartRepositoryImpl extends CartRepository {
  final CartRemoteDataSource cartRemoteDataSource;
  final CartLocalDataSource cartLocalDataSource;
  final NetworkInfo networkInfo;

  CartRepositoryImpl({
    required this.cartRemoteDataSource,
    required this.cartLocalDataSource,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, List<ModifiedCart>>> getCarts() async {
    return await _getCart(() => cartRemoteDataSource.getCart());
  }

  Future<Either<Failure, List<ModifiedCart>>> _getCart(
      _GetCartFunction getCartFunction) async {
    if (await networkInfo.isConnected) {
      try {
        final carts = await getCartFunction();

        cartLocalDataSource.cacheCart(
            cart: carts
                .map(
                  (e) => ModifiedCartModel.fromModefiedCart(e),
                )
                .toList());
        return Right(carts);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      try {
        final carts = await cartLocalDataSource.getCart();
        return Right(carts);
      } on CacheException {
        return Left(CacheFailure());
      } on OfflineException {
        return Left(OfflineFailure());
      }
    }
  }

  @override
  Future<Either<Failure, CartModel>> addProductToCart(
      {required Cart cart}) async {
    if (await networkInfo.isConnected) {
      try {
        final result = await cartRemoteDataSource.addProductToCart(
            cart: CartModel.fromCart(cart));
        return Right(result);
      } on ServerException {
        return Left(ServerFailure());
      }
    }
    return Left(OfflineFailure());
  }
}
