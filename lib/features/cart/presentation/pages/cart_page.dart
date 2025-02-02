import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/utils.dart';
import '../../domain/entities/cart.dart';
import '../bloc/cart_bloc.dart';
import '../widgets/cart_item.dart';
import '../widgets/cart_total.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  void initState() {
    super.initState();
    _fetchCartData();
  }

  Future<void> _fetchCartData() async {
    context.read<CartBloc>().add(CartEvent.getAllCarts(userId: 5));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Cart', style: TextStyle(fontSize: 18.sp))),
      body: RefreshIndicator(
        onRefresh: () {
          return _fetchCartData();
        },
        child: BlocConsumer<CartBloc, CartState>(
          listener: (context, state) {
            state.whenOrNull(
              error: (message) => ScaffoldMessenger.of(context)
                  .showSnackBar(SnackBar(content: Text(message))),
            );
          },
          builder: (context, state) {
            return state.maybeWhen(
              loading: () =>
                  Center(child: CircularProgressIndicator.adaptive()),
              loaded: (carts) => _buildCartContent(carts),
              error: (message) => SingleChildScrollView(
                physics:
                    AlwaysScrollableScrollPhysics(), // Enables pull-to-refresh
                child: SizedBox(
                  height: 0.9.sh,
                  child:
                      Center(child: buildRetryWidget(message, _fetchCartData)),
                ),
              ),
              orElse: () => Center(child: Text("No data available")),
            );
          },
        ),
      ),
    );
  }

  Widget _buildCartContent(List<ModifiedCart> carts) {
    return Padding(
      padding: EdgeInsets.all(16.w),
      child: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: carts.length,
              itemBuilder: (context, index) {
                return CartItem(cartProducts: carts[index].products!);
              },
            ),
          ),
          CartTotal(carts: carts),
        ],
      ),
    );
  }
}
