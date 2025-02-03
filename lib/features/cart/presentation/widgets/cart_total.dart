import 'package:ecommerce_task/features/cart/presentation/bloc/total_bloc/calc_total_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../domain/entities/cart.dart';

class CartTotal extends StatelessWidget {
  final List<ModifiedCart> carts;

  const CartTotal({super.key, required this.carts});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          CalcTotalBloc()..add(CalcTotalEvent.calcTotal(carts: carts)),
      child: BlocBuilder<CalcTotalBloc, CalcTotalState>(
        builder: (context, state) {
          return Padding(
            padding: EdgeInsets.all(16.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total: \$${state.total.toStringAsFixed(2)}',
                  style:
                      TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    padding:
                        EdgeInsets.symmetric(horizontal: 24.w, vertical: 12.h),
                  ),
                  child: Text('Checkout', style: TextStyle(fontSize: 16.sp)),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
