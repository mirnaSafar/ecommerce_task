import 'package:dartz/dartz.dart';
import '../../../../../core/common/errors/failures.dart';
import '../../../../../core/utils/utils.dart';
import '../../../domain/usecases/add_product.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../domain/entities/product.dart';
import 'package:equatable/equatable.dart';

part 'add_product_event.dart';
part 'add_product_state.dart';

class AddProductBloc extends Bloc<AddProductEvent, AddProductState> {
  final AddProduct addProduct;
  AddProductBloc({required this.addProduct}) : super(AddProductInitial()) {
    on<AddProductEvent>((event, emit) async {
      if (event is AddProductRequested) {
        await _onAddProductRequested(event, emit);
      }
    });
  }

  Future<void> _onAddProductRequested(
      AddProductRequested event, Emitter<AddProductState> emit) async {
    emit(AddProductLoading());
    Either<Failure, Product> result = await addProduct(event.product);
    result.fold(
        (failure) => emit((AddProductFailure(
            message: mapFailureToMessage(failure: failure)))),
        (product) => emit(AddProductSuccess(product: product)));
  }
}
