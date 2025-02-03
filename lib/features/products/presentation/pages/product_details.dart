import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

import '../../../../core/routes/routes.dart';
import '../../../../core/utils/utils.dart';
import '../../../cart/data/models/cart_model.dart';
import '../../../cart/domain/entities/cart.dart';
import '../../../cart/presentation/bloc/cart_bloc.dart';
import '../../domain/entities/product.dart';
import '../bloc/price/price_bloc.dart';
import '../bloc/product_details_bloc/product_details_bloc.dart';
import '../bloc/quantity/quantity_bloc.dart';
import '../widgets/add_to_cart_btn.dart';
import '../widgets/add_to_cart_dialog.dart';
import '../widgets/product_display.dart';
import '../widgets/product_image.dart';
import '../widgets/product_title.dart';
import '../widgets/quantity_selector.dart';

class ProductDetailsScreen extends StatefulWidget {
  final Product product;

  const ProductDetailsScreen({super.key, required this.product});

  @override
  _ProductDetailsScreenState createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  @override
  void initState() {
    super.initState();
    _fetchProductDetails();
  }

  Future<void> _fetchProductDetails() async {
    context
        .read<ProductDetailsBloc>()
        .add(GetProductDetailsEvent(id: widget.product.id!));
    context.read<QuantityBloc>().add(QuantityEvent.setInitialQuantity(1));
    context
        .read<PriceBloc>()
        .add(PriceEvent.setInitialPrice(widget.product.price ?? 0));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.product.title ?? '')),
      body: RefreshIndicator(
        onRefresh: () {
          return _fetchProductDetails();
        },
        child: BlocBuilder<ProductDetailsBloc, ProductDetailsState>(
          builder: (context, state) {
            if (state is Loading) {
              return Center(child: CircularProgressIndicator.adaptive());
            } else if (state is Error) {
              return _buildproductDetailsWidget(widget.product);
            }
            if (state is Loaded) {
              return _buildproductDetailsWidget(state.product);
            }
            return SizedBox();
          },
        ),
      ),
    );
  }

  Padding _buildproductDetailsWidget(Product product) {
    return Padding(
      padding: EdgeInsets.all(16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ProductImage(imageUrl: product.image ?? ''),
          SizedBox(height: 16.h),
          ProductTitle(title: product.title ?? ''),
          SizedBox(height: 8.h),
          BlocBuilder<PriceBloc, PriceState>(
            builder: (context, state) {
              return PriceDisplay(price: state.price);
            },
          ),
          SizedBox(height: 16.h),
          BlocBuilder<QuantityBloc, QuantityState>(
            builder: (context, state) {
              return QuantitySelector(
                quantity: state.quantity,
                onQuantityChanged: (newQuantity) {
                  context
                      .read<QuantityBloc>()
                      .add(QuantityEvent.updateQuantity(newQuantity));
                  context.read<PriceBloc>().add(
                      PriceEvent.updatePrice(product.price ?? 0, newQuantity));
                },
              );
            },
          ),
          Spacer(),
          BlocConsumer<CartBloc, CartState>(
            listener: (context, state) {
              state.whenOrNull(
                addProductToCartSuccess: (cart) {
                  showCustomSnackBar(
                      context, "Product added to the cart successfully");
                  Future.delayed(Duration(seconds: 2)).then((value) {
                    if (context.mounted) {
                      context.pushNamed(AppRouter.cart);
                    }
                  });
                },
                error: (message) {
                  showCustomSnackBar(context, "Something went wrong!,$message",
                      color: Colors.red);
                },
              );
            },
            builder: (context, state) {
              return state.maybeWhen(
                addToCartLoading: () =>
                    Center(child: CircularProgressIndicator.adaptive()),
                orElse: () {
                  return BlocBuilder<QuantityBloc, QuantityState>(
                    builder: (context, state) {
                      return AddToCartButton(onPressed: () {
                        showAddToCartDialog(
                          context,
                          product,
                          () {
                            _addToCart(context, state.quantity);
                            context.pop();
                          },
                        );
                      });
                    },
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }

  void _addToCart(BuildContext context, int quantity) {
    context.read<CartBloc>().add(CartEvent.addProductToCartEvent(Cart(
          date: DateFormat('yyyy-MM-dd').format(DateTime.now()),
          userId: 5,
          products: [
            Products(productId: widget.product.id, quantity: quantity)
          ],
        )));
  }
}
