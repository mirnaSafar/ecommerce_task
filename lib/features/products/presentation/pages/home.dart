import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/routes/routes.dart';
import '../../../../core/utils/utils.dart';
import '../bloc/categories_bloc/categories_bloc.dart';
import '../bloc/products_bloc/product_bloc.dart';
import '../widgets/categories_section.dart';
import '../widgets/products_grid_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    _fetchHomeData();
  }

  Future<void> _fetchHomeData() async {
    context.read<CategoriesBloc>().add(CategoriesEvent.getAllCategoriesEvent());
    context.read<ProductBloc>().add(GetAllProductsEvent());
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () {
        return _fetchHomeData();
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text('Store'),
          actions: [
            IconButton(
              icon: Icon(Icons.shopping_cart_rounded),
              onPressed: () {
                context.pushNamed(AppRouter.cart);
              },
            )
          ],
        ),
        body: Column(
          children: [
            BlocBuilder<CategoriesBloc, CategoriesState>(
              builder: (context, state) => state.when(
                loading: () =>
                    Center(child: CircularProgressIndicator.adaptive()),
                loaded: (categories) =>
                    CategoriesSection(categories: categories),
                error: (message) => SizedBox(),
              ),
            ),
            Expanded(
              child: BlocBuilder<ProductBloc, ProductState>(
                builder: (context, state) {
                  if (state is Loading) {
                    return Center(child: CircularProgressIndicator.adaptive());
                  } else if (state is Loaded) {
                    return ProductsGridView(products: state.products);
                  } else if (state is Error) {
                    return SingleChildScrollView(
                      physics: AlwaysScrollableScrollPhysics(),
                      child: SizedBox(
                        height: 0.8.sh,
                        child: Center(
                            child: buildRetryWidget(
                                state.message, _fetchHomeData)),
                      ),
                    );
                  }
                  return SizedBox();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
