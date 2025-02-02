import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class QuantitySelector extends StatelessWidget {
  final int quantity;
  final ValueChanged<int> onQuantityChanged;
  const QuantitySelector(
      {super.key, required this.quantity, required this.onQuantityChanged});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('Quantity:', style: TextStyle(fontSize: 16.sp)),
        IconButton(
          icon: Icon(Icons.remove, size: 20.sp),
          onPressed: (quantity > 1)
              ? () {
                  onQuantityChanged(quantity - 1);
                }
              : null,
        ),
        Text('$quantity', style: TextStyle(fontSize: 16.sp)),
        IconButton(
          icon: Icon(Icons.add, size: 20.sp),
          onPressed: () {
            onQuantityChanged(quantity + 1);
          },
        ),
      ],
    );
  }
}
