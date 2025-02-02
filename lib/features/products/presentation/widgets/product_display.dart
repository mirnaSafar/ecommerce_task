import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PriceDisplay extends StatelessWidget {
  final double? price;
  const PriceDisplay({super.key, required this.price});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Price: \$${price ?? 0.0}',
      style: TextStyle(fontSize: 20.sp),
    );
  }
}
