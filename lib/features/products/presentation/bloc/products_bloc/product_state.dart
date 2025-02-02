part of 'product_bloc.dart';

sealed class ProductState extends Equatable {
  const ProductState();

  @override
  List<Object> get props => [];
}

final class Loading extends ProductState {}

final class Loaded extends ProductState {
  final List<Product> products;

  const Loaded({required this.products});
}

final class Error extends ProductState {
  final String message;

  const Error({required this.message});
}
