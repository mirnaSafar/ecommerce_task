import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:ecommerce_task/core/network/network_utils.dart';
import 'core/services/cart_service.dart';
import 'core/shared_preference_repository.dart';
import 'features/cart/data/datasources/cart_local_data_source.dart';
import 'features/cart/data/datasources/cart_remote_data_source.dart';
import 'features/cart/data/repositories/cart_repository_impl.dart';
import 'features/cart/domain/repositories/cart_repository.dart';
import 'features/cart/domain/usecases/add_to_cart.dart';
import 'features/cart/domain/usecases/get_carts.dart';
import 'features/cart/presentation/bloc/cart_bloc.dart';
import 'features/products/domain/usecases/get_categories.dart';
import 'features/products/domain/usecases/get_product_by_category.dart';
import 'features/products/domain/usecases/get_products.dart';
import 'features/products/presentation/bloc/add_product_bloc/add_product_bloc.dart';
import 'features/products/presentation/bloc/categories_bloc/categories_bloc.dart';
import 'features/products/presentation/bloc/product_details_bloc/product_details_bloc.dart';
import 'features/products/presentation/bloc/products_bloc/product_bloc.dart';
import 'package:get_it/get_it.dart';
import 'core/network/network_info.dart';
import 'features/products/data/datasources/products_local_data_source.dart';
import 'features/products/data/datasources/products_remote_data_source.dart';
import 'features/products/data/repositories/product_repository_impl.dart';
import 'features/products/domain/repositories/product_repository.dart';
import 'features/products/domain/usecases/add_product.dart';
import 'features/products/domain/usecases/get_product_details.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

final sl = GetIt.instance; // sl = Service Locator

Future<void> init() async {
  // **Bloc**
  sl.registerFactory(
      () => ProductBloc(getAllProducts: sl(), getProductsByCategory: sl()));
  sl.registerFactory(() => CategoriesBloc(getAllCategories: sl()));
  sl.registerFactory(() => ProductDetailsBloc(getProductDetails: sl()));
  sl.registerFactory(() => AddProductBloc(addProduct: sl()));
  sl.registerFactory(() => CartBloc(addToCart: sl(), getCarts: sl()));

  // **Use Cases**
  sl.registerLazySingleton(() => GetAllProducts(repository: sl()));
  sl.registerLazySingleton(() => GetProductsByCategory(sl()));
  sl.registerLazySingleton(() => GetAllCategories(sl()));
  sl.registerLazySingleton(() => GetProductDetails(repository: sl()));
  sl.registerLazySingleton(() => AddProduct(repository: sl()));
  sl.registerLazySingleton(() => AddToCart(repository: sl()));
  sl.registerLazySingleton(() => GetCarts(repository: sl()));

  // **Services**
  sl.registerLazySingleton(() => CartService(getProductDetails: sl()));

  // **Repository**
  sl.registerLazySingleton<ProductRepository>(
    () => ProductRepositoryImpl(
      remoteDataSource: sl(),
      localDataSource: sl(),
      networkInfo: sl(),
    ),
  );
  sl.registerLazySingleton<CartRepository>(
    () => CartRepositoryImpl(
      cartRemoteDataSource: sl(),
      cartLocalDataSource: sl(),
      networkInfo: sl(),
    ),
  );
  sl.registerLazySingleton<SharedPreferenceRepository>(
      () => SharedPreferenceRepository(sharedPreference: sl()));

  // **Data Sources**
  sl.registerLazySingleton<ProductRemoteDataSource>(
      () => ProductRemoteDataSourceImpl(networkUtil: sl()));
  sl.registerLazySingleton<ProductsLocalDataSource>(
      () => ProductsLocalDataSourceImpl(sharedpreferences: sl()));
  sl.registerLazySingleton<CartRemoteDataSource>(
      () => CartRemoteDataSourceImpl(sl(), cartService: sl()));
  sl.registerLazySingleton<CartLocalDataSource>(
      () => CartLocalDataSourceImpl(sharedpreferences: sl()));

  // **Core**
  sl.registerLazySingleton<NetworkInfo>(
      () => NetworkInfoImpl(connectionChecker: sl()));
  sl.registerLazySingleton<NetworkUtil>(() => NetworkUtil(client: sl()));

  // **External Dependencies**
  sl.registerLazySingleton(() => http.Client());
  sl.registerLazySingleton(() => Connectivity());
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  sl.registerLazySingleton(() => sharedPreferences);
}
