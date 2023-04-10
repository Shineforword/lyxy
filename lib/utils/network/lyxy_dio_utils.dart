import 'dart:io';

import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'lyxy_network.dart';

class LyxyDioUtil {
  /// 连接超时时间
  static const int CONNECT_TIMEOUT = 6 * 1000;

  /// 响应超时时间
  static const int RECEIVE_TIMEOUT = 6 * 1000;

  /// 请求的URL前缀
  static String BASE_URL = "http://localhost:8080";

  /// 是否开启网络缓存,默认false
  static bool CACHE_ENABLE = false;

  /// 最大缓存时间(按秒), 默认缓存七天,可自行调节
  static int MAX_CACHE_AGE = 7 * 24 * 60 * 60;

  /// 最大缓存条数(默认一百条)
  static int MAX_CACHE_COUNT = 100;

  static LyxyDioUtil? _instance;
  static Dio _dio = Dio();
  Dio get dio => _dio;

  LyxyDioUtil._internal() {
    _instance = this;
    _instance!._init();
  }

  factory LyxyDioUtil() => _instance ?? LyxyDioUtil._internal();

  static LyxyDioUtil? getInstance() {
    _instance ?? LyxyDioUtil._internal();
    return _instance;
  }

  /// 取消请求token
  final CancelToken _cancelToken = CancelToken();

  /// cookie
  CookieJar cookieJar = CookieJar();

  _init() {
    /// 初始化基本选项
    BaseOptions options = BaseOptions(
        baseUrl: BASE_URL,
        connectTimeout: const Duration(microseconds: CONNECT_TIMEOUT),
        receiveTimeout: const Duration(microseconds: RECEIVE_TIMEOUT));

    /// 初始化dio
    _dio = Dio(options);

    /// 添加拦截器
    _dio.interceptors.add(LyxyDioInterceptors());

    /// 添加转换器
    _dio.transformer = LyxyDioTransformer();

    /// 添加cookie管理器
    // _dio.interceptors.add(CookieManager(cookieJar));

    /// 刷新token拦截器(lock/unlock)
    // _dio.interceptors.add(DioTokenInterceptors());

    /// 添加缓存拦截器
    // _dio.interceptors.add(DioCacheInterceptors());
  }

  /// 设置Http代理(设置即开启)
  void setProxy({String? proxyAddress, bool enable = false}) {
    if (enable) {
      // ignore: deprecated_member_use
      (_dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
          (HttpClient client) {
        client.findProxy = (uri) {
          return proxyAddress ?? "";
        };
        client.badCertificateCallback =
            (X509Certificate cert, String host, int port) => true;
        return null;
      };
    }
  }

  /// 设置https证书校验
  void setHttpsCertificateVerification({String? pem, bool enable = false}) {
    if (enable) {
      // ignore: deprecated_member_use
      (_dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
          (client) {
        client.badCertificateCallback =
            (X509Certificate cert, String host, int port) {
          if (cert.pem == pem) {
            // 验证证书
            return true;
          }
          return false;
        };
        return null;
      };
    }
  }

  /// 开启日志打印
  void openLog() {
    _dio.interceptors.add(LogInterceptor(responseBody: true));
  }

  /// 请求类
  Future<T> request<T>(
    String path, {
    LyxyDioMethod method = LyxyDioMethod.get,
    Map<String, dynamic>? params,
    data,
    CancelToken? cancelToken,
    Options? options,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    const methodValues = {
      LyxyDioMethod.get: 'get',
      LyxyDioMethod.post: 'post',
      LyxyDioMethod.put: 'put',
      LyxyDioMethod.delete: 'delete',
      LyxyDioMethod.patch: 'patch',
      LyxyDioMethod.head: 'head'
    };

    options ??= Options(method: methodValues[method]);
    try {
      Response response;
      response = await _dio.request(path,
          data: data,
          queryParameters: params,
          cancelToken: cancelToken ?? _cancelToken,
          options: options,
          onSendProgress: onSendProgress,
          onReceiveProgress: onReceiveProgress);
      return response.data;
    } on DioError {
      rethrow;
    }
  }

  /// 取消网络请求
  void cancelRequests({CancelToken? token}) {
    token ?? _cancelToken.cancel("cancelled");
  }
}
