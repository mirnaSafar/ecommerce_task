import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../domain/entities/product.dart';

void showAddToCartDialog(
    BuildContext context, Product product, VoidCallback onPressed) {
  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: Text("Add to Cart"),
        content: Text(
            "Are you sure you want to add '${product.title}' to your cart?"),
        actions: [
          TextButton(
            onPressed: () => context.pop(),
            child: Text("Cancel"),
          ),
          ElevatedButton(
            onPressed: onPressed,
            child: Text("Yes, Add"),
          ),
        ],
      );
    },
  );
}
