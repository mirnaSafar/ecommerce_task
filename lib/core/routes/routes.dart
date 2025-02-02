import 'package:go_router/go_router.dart';

import '../../app/main_screen.dart';
import '../../features/cart/presentation/pages/cart_page.dart';
import '../../features/products/domain/entities/product.dart';
import '../../features/products/presentation/pages/add_product.dart';
import '../../features/products/presentation/pages/home.dart';
import '../../features/products/presentation/pages/product_details.dart';

class AppRouter {
  static String main = 'main';
  static String home = 'home';
  static String productDetails = 'productDetails';
  static String addProduct = 'addProduct';
  static String cart = 'cart';

  static final GoRouter appRouter = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        name: main,
        builder: (context, state) => MainScreen(),
      ),
      GoRoute(
        path: '/home',
        name: home,
        builder: (context, state) => const HomePage(),
      ),

      // Product Details Page
      GoRoute(
        path: '/product',
        name: productDetails,
        builder: (context, state) {
          final Product product = state.extra as Product;
          return ProductDetailsScreen(product: product);
        },
      ),

      // Cart Page
      GoRoute(
        path: '/cart',
        name: cart,
        builder: (context, state) => const CartPage(),
      ),

      // Add Product Page
      GoRoute(
        path: '/add-product',
        name: addProduct,
        builder: (context, state) => AddProductPage(),
      ),
    ],
  );
}
