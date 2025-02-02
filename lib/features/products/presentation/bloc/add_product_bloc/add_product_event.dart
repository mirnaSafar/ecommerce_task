part of 'add_product_bloc.dart';

sealed class AddProductEvent extends Equatable {
  const AddProductEvent();

  @override
  List<Object> get props => [];
}

class AddProductRequested extends AddProductEvent {
  final Product product;

  const AddProductRequested({required this.product});

  @override
  List<Object> get props => [product];
}
