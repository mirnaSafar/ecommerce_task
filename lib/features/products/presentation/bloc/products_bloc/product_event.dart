part of 'product_bloc.dart';

sealed class ProductEvent extends Equatable {
  const ProductEvent();

  @override
  List<Object> get props => [];
}

class GetAllProductsEvent extends ProductEvent {}

class GetProductsByCategoryEvent extends ProductEvent {
  final String category;

  const GetProductsByCategoryEvent({required this.category});
  @override
  List<Object> get props => [category];
}
