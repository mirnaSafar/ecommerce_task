import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/services/cart_service.dart';
import '../../domain/entities/cart.dart';

class CartTotal extends StatelessWidget {
  final List<ModifiedCart> carts;

  const CartTotal({super.key, required this.carts});

  @override
  Widget build(BuildContext context) {
    double totalPrice = CartService.calcTotal(carts);

    return Padding(
      padding: EdgeInsets.all(16.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Total: \$${totalPrice.toStringAsFixed(2)}',
            style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 12.h),
            ),
            child: Text('Checkout', style: TextStyle(fontSize: 16.sp)),
          ),
        ],
      ),
    );
  }
}
