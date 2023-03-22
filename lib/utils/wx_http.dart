import 'package:dio/dio.dart';

import 'config.dart';

/// 微信 http
class WxHttpUtil {
  // 单例
  static final WxHttpUtil _instance = WxHttpUtil._internal();
  factory WxHttpUtil() => _instance;
  Dio? _dio;

  WxHttpUtil._internal() {
    if (_dio == null) {
      _dio = Dio();
      _dio?.options = BaseOptions(
        baseUrl: lyxyMockApiPostHost,
        connectTimeout: const Duration(seconds: 10), // 10秒
        receiveTimeout: const Duration(seconds: 5), // 5秒
        headers: {},
        contentType: 'application/json; charset=utf-8',
        responseType: ResponseType.json,
      );
    }
  }

  /// get请求
  Future<Response> get(String url, {Map<String, dynamic>? data}) async {
    Response response = await _dio!.get(url, queryParameters: data);
    return response;
  }

  /// post请求
  Future<Response> post(String url, {Map<String, dynamic>? data}) async {
    Response response = await _dio!.post(url, data: data);
    return response;
  }
}
