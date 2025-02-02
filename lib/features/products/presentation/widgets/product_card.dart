import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/routes/routes.dart';
import '../../domain/entities/product.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.pushNamed(AppRouter.productDetails, extra: product),
      child: Card(
        elevation: 5,
        child: Column(
          children: [
            CachedNetworkImage(
              imageUrl: product.image ?? '',
              width: 100.w,
              height: 100.h,
              fit: BoxFit.contain,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.w),
                  child: Text(
                    product.title ?? '',
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(fontSize: 11.sp, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Text('\$${product.price}',
                style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w600)),
          ],
        ),
      ),
    );
  }
}
