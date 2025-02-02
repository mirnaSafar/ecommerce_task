import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/common/errors/failures.dart';
import '../../../../../core/utils/utils.dart';
import '../../../domain/entities/product.dart';
import '../../../domain/usecases/get_product_details.dart';

part 'product_details_event.dart';
part 'product_details_state.dart';

class ProductDetailsBloc
    extends Bloc<ProductDetailsEvent, ProductDetailsState> {
  final GetProductDetails getProductDetails;
  ProductDetailsBloc({required this.getProductDetails}) : super(Loading()) {
    on<GetProductDetailsEvent>(_onGetProductDetailsEvent);
  }

  Future<void> _onGetProductDetailsEvent(
      GetProductDetailsEvent event, Emitter<ProductDetailsState> emit) async {
    emit(Loading());
    Either<Failure, Product> result = await getProductDetails(event.id);
    result.fold(
        (failure) =>
            emit(Error(message: mapFailureToMessage(failure: failure))),
        (product) => emit(Loaded(product: product)));
  }
}
