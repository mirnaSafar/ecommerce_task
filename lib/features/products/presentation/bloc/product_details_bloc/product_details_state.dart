part of 'product_details_bloc.dart';

sealed class ProductDetailsState extends Equatable {
  const ProductDetailsState();

  @override
  List<Object> get props => [];
}

final class Loading extends ProductDetailsState {}

final class Loaded extends ProductDetailsState {
  final Product product;

  const Loaded({required this.product});
}

final class Error extends ProductDetailsState {
  final String message;

  const Error({required this.message});
}
