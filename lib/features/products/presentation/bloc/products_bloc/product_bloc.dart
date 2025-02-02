import 'package:dartz/dartz.dart';
import '../../../../../core/common/errors/failures.dart';
import '../../../../../core/common/usecase/usecase.dart';
import '../../../../../core/utils/utils.dart';
import '../../../domain/entities/product.dart';
import '../../../domain/usecases/get_product_by_category.dart';
import '../../../domain/usecases/get_products.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'product_event.dart';
part 'product_state.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final GetAllProducts getAllProducts;
  final GetProductsByCategory getProductsByCategory;
  ProductBloc(
      {required this.getProductsByCategory, required this.getAllProducts})
      : super(Loading()) {
    on<GetAllProductsEvent>(_onGetAllProductsEvent);
    on<GetProductsByCategoryEvent>(_onGetProductsByCategoryEvent);
  }
  Future<void> _onGetAllProductsEvent(
      GetAllProductsEvent event, Emitter<ProductState> emit) async {
    emit(Loading());

    Either<Failure, List<Product>> resutl = await getAllProducts(NoParams());
    emit(_resultToState(resutl));
  }

  Future<void> _onGetProductsByCategoryEvent(
      GetProductsByCategoryEvent event, Emitter<ProductState> emit) async {
    emit(Loading());

    Either<Failure, List<Product>> resutl =
        await getProductsByCategory(event.category);
    emit(_resultToState(resutl));
  }

  ProductState _resultToState(Either<Failure, List<Product>> resutl) {
    return resutl.fold(
        (failure) => Error(message: mapFailureToMessage(failure: failure)),
        (products) => Loaded(products: products));
  }
}
