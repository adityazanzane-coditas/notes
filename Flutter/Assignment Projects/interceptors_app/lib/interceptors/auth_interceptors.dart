import 'package:dio/dio.dart';
import 'dart:math';
import 'package:interceptors_app/services/store.dart';

class AuthInterceptors extends Interceptor {
  final Random _random = Random();

  @override
  Future<void> onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    // Randomly decide whether to include the token
    bool includeToken = _random.nextBool();

    if (includeToken) {
      final token = await Store.getToken();

      if (token != null && token.isNotEmpty) {
        options.headers['Authorization'] = 'Bearer $token';
      }
    }

    options.headers['Content-type'] = 'application/json';

    super.onRequest(options, handler);
  }
}
