import 'package:dio/dio.dart';

import 'endpoints.dart';
import 'middlewares/error_interceptor.dart';
import 'middlewares/logger_interceptor.dart';
import 'middlewares/request_interceptor.dart';

class ApiClient {
  final dio = getDio();
  ApiClient._internal();

  static final _singleton = ApiClient._internal();

  factory ApiClient() => _singleton;

  static Dio getDio() {
    var dio = Dio(
      BaseOptions(
        baseUrl: EndPoints.baseUrl,
        receiveTimeout: const Duration(seconds: 15), // 15 seconds
        connectTimeout: const Duration(seconds: 15),
        sendTimeout: const Duration(seconds: 15),
      ),
    );
    dio.interceptors.addAll({
      LoggerInterceptor(
        logRequestTimeout: false,
        logRequestHeaders: true,
        logResponseHeaders: false,
      ),
      RequestInterceptors(dio),
      ErrorInterceptor()
    });
    return dio;
  }
}
