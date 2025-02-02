import '../../../products/data/models/product_model.dart';

import '../../../products/domain/entities/product.dart';
import '../../domain/entities/cart.dart';

class CartModel extends Cart {
  CartModel(
      {required super.id,
      required super.userId,
      required super.date,
      required super.products});

  CartModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['userId'];
    date = json['date'];
    if (json['products'] != null) {
      products = <Products>[];
      json['products'].forEach((v) {
        products!.add(Products.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['userId'] = userId;
    data['date'] = date;
    if (products != null) {
      data['products'] = products!.map((v) => v.toJson()).toList();
    }
    return data;
  }

  factory CartModel.fromCart(Cart cart) {
    return CartModel(
      id: cart.id,
      userId: cart.userId,
      date: cart.date,
      products: cart.products,
    );
  }
}

class Products {
  int? productId;
  int? quantity;

  Products({this.productId, this.quantity});

  Products.fromJson(Map<String, dynamic> json) {
    productId = json['productId'];
    quantity = json['quantity'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['productId'] = productId;
    data['quantity'] = quantity;
    return data;
  }
}

class ModifiedCartModel extends ModifiedCart {
  ModifiedCartModel(
      {required super.id,
      required super.userId,
      required super.date,
      required super.products});

  ModifiedCartModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['userId'];
    date = json['date'];
    if (json['products'] != null) {
      products = <CartProduct>[];
      json['products'].forEach((v) {
        products!.add(CartProduct.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['userId'] = userId;
    data['date'] = date;
    if (products != null) {
      data['products'] = products!.map((v) => v.toJson()).toList();
    }
    return data;
  }

  factory ModifiedCartModel.fromModefiedCart(ModifiedCart cart) {
    return ModifiedCartModel(
        id: cart.id,
        userId: cart.userId,
        date: cart.date,
        products: cart.products);
  }
}

class CartProduct {
  Product? product;
  int? quantity;

  CartProduct({this.product, this.quantity});

  CartProduct.fromJson(Map<String, dynamic> json) {
    product = ProductModel.fromJson(json['product']);
    quantity = json['quantity'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['product'] = product;
    data['quantity'] = quantity;
    return data;
  }
}
