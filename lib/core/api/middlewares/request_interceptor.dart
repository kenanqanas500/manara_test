import 'package:dio/dio.dart';

// import '../refresh_token.dart';

class RequestInterceptors extends QueuedInterceptorsWrapper {
  Dio dio;
  RequestInterceptors(this.dio);
  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    bool withToken = options.extra['token'] ?? true;
    if (withToken) {
      // var token = await SharedPrefHelper.getTokenFromSharedPref();
      // if (token != null) {
      //   options.headers.addAll({"Authorization": "Bearer $token"});
      // }
    }
    return handler.next(options);
  }
}
