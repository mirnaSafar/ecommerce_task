import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../data/models/cart_model.dart';

class CartItem extends StatelessWidget {
  final List<CartProduct> cartProducts;

  const CartItem({super.key, required this.cartProducts});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: cartProducts
          .map((cartProduct) => _buildCartItem(cartProduct))
          .toList(),
    );
  }

  Widget _buildCartItem(CartProduct cartProduct) {
    final product = cartProduct.product;
    final quantity = cartProduct.quantity ?? 1;
    final price = (product?.price ?? 0) * quantity;

    return Card(
      margin: EdgeInsets.symmetric(vertical: 8.h, horizontal: 4.w),
      child: Padding(
        padding: EdgeInsets.all(12.w),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CachedNetworkImage(
              height: 60.h,
              width: 60.w,
              imageUrl: product?.image ?? 'https://via.placeholder.com/60',
              fit: BoxFit.cover,
              errorWidget: (context, url, error) =>
                  Icon(Icons.image_not_supported, size: 30.w),
            ),
            SizedBox(width: 12.w),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product?.title ?? 'Unknown Product',
                    style:
                        TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 4.h),
                  Text(
                    'Quantity: $quantity',
                    style: TextStyle(fontSize: 14.sp, color: Colors.grey),
                  ),
                ],
              ),
            ),
            SizedBox(width: 8.w),
            Text(
              '\$${price.toStringAsFixed(2)}',
              style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
