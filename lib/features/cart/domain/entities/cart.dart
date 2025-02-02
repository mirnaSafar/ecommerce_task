import '../../data/models/cart_model.dart';

class Cart {
  int? id;
  int? userId;
  String? date;
  List<Products>? products;

  Cart({this.id, this.userId, this.date, this.products});
}

class ModifiedCart {
  int? id;
  int? userId;
  String? date;
  List<CartProduct>? products;

  ModifiedCart({this.id, this.userId, this.date, this.products});
}
