import 'package:dio/dio.dart';

class HttpClient {
  final Dio _dio;
  String? _accessToken; // Access token lưu trong RAM

  HttpClient({
    String baseUrl = 'http://192.168.31.98:3000',
    Duration connectTimeout = const Duration(seconds: 5),
    Duration receiveTimeout = const Duration(seconds: 3),
  }) : _dio = Dio(
         BaseOptions(
           baseUrl: baseUrl,
           connectTimeout: connectTimeout,
           receiveTimeout: receiveTimeout,
           headers: {
             'Content-Type': 'application/json',
             'Accept': 'application/json',
           },
         ),
       ) {
    _dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) async {
          if (_accessToken != null) {
            options.headers['Authorization'] = 'Bearer $_accessToken';
          }
          handler.next(options);
        },
        onResponse: (response, handler) {
          handler.next(response);
        },
        onError: (DioException e, handler) {
          handler.next(e);
        },
      ),
    );
  }

  // Lưu access token vào RAM
  void setAccessToken(String token) {
    _accessToken = token;
  }

  // Đọc access token từ RAM
  String? getAccessToken() {
    return _accessToken;
  }

  // Xóa access token khỏi RAM
  void clearAccessToken() {
    _accessToken = null;
  }

  // Phương thức chung để thực hiện request
  Future<Response> _request(
    String path, {
    required String method,
    Map<String, dynamic>? data,
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) async {
    try {
      return await _dio.request(
        path,
        data: data,
        queryParameters: queryParameters,
        options:
            options != null
                ? options.copyWith(method: method)
                : Options(method: method),
      );
    } on DioException catch (e) {
      throw _handleDioError(e);
    }
  }

  // Xử lý lỗi từ Dio
  Exception _handleDioError(DioException e) {
    switch (e.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
        return Exception('Request timeout');
      case DioExceptionType.badResponse:
        return Exception(
          'Server error: ${e.response?.statusCode} - ${e.response?.data}',
        );
      default:
        return Exception('Network error: ${e.message}');
    }
  }

  // Các phương thức HTTP
  Future<Response> get(
    String path, {
    Map<String, dynamic>? queryParameters,
  }) async {
    return _request(path, method: 'GET', queryParameters: queryParameters);
  }

  Future<Response> post(String path, {Map<String, dynamic>? data}) async {
    return _request(path, method: 'POST', data: data);
  }

  Future<Response> put(String path, {Map<String, dynamic>? data}) async {
    return _request(path, method: 'PUT', data: data);
  }

  Future<Response> delete(String path) async {
    return _request(path, method: 'DELETE');
  }
}
