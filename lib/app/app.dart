import '../features/products/presentation/bloc/price/price_bloc.dart';
import '../features/products/presentation/bloc/quantity/quantity_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../core/routes/routes.dart';
import '../features/cart/presentation/bloc/cart_bloc.dart';
import '../features/products/presentation/bloc/add_product_bloc/add_product_bloc.dart';
import '../features/products/presentation/bloc/categories_bloc/categories_bloc.dart';
import '../features/products/presentation/bloc/product_details_bloc/product_details_bloc.dart';
import '../features/products/presentation/bloc/products_bloc/product_bloc.dart';
import '../injection_container.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => sl<ProductBloc>(),
          ),
          BlocProvider(
            create: (context) => sl<AddProductBloc>(),
          ),
          BlocProvider(
            create: (context) => sl<ProductDetailsBloc>(),
          ),
          BlocProvider(
            create: (context) => sl<CartBloc>(),
          ),
          BlocProvider(
            create: (context) => sl<CategoriesBloc>(),
          ),
          BlocProvider(
            create: (context) => QuantityBloc(),
          ),
          BlocProvider(
            create: (context) => PriceBloc(),
          ),
        ],
        child: ScreenUtilInit(
          minTextAdapt: true,
          builder: (_, child) => MaterialApp.router(
            debugShowCheckedModeBanner: false,
            routerConfig: AppRouter.appRouter,
            title: 'E-commerce',
          ),
        ));
  }
}
