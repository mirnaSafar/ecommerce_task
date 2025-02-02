import '../common/enums.dart';

class NetworkConfig {
  static String BASE_API = '/';

  static String getFullApiRoute(String apiRoute) {
    return BASE_API + apiRoute;
  }

  static Map<String, String> getHeaders(
      {bool? needAuth = true,
      required RequestType type,
      Map<String, String>? extraHeaders}) {
    return {
      if (needAuth!) "Authorization": "Bearer {storage.getTokenInfo()",
      if (type != RequestType.GET) "Content-Type": "application/json",
      ...extraHeaders ?? {}
    };
  }

  Map<String, String> extraHeaders = {'language': 'ar'};
}
