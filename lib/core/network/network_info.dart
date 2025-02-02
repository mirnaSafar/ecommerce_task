import 'package:connectivity_plus/connectivity_plus.dart';

abstract class NetworkInfo {
  Future<bool> get isConnected;
}

class NetworkInfoImpl implements NetworkInfo {
  final Connectivity connectionChecker;

  NetworkInfoImpl({required this.connectionChecker});

  @override
  Future<bool> get isConnected async {
    final result = await connectionChecker.checkConnectivity();

    if (result.contains(ConnectivityResult.none)) {
      return false; // No connection
    }
    return true;
  }
}
