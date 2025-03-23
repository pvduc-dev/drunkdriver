import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:openapi/openapi.dart';
import '../utils/dio_interceptor.dart';

class ApiService {
  static final ApiService _instance = ApiService._internal();
  late final Openapi api;
  late final Dio _dio;

  factory ApiService() {
    return _instance;
  }

  ApiService._internal() {
    _dio = Dio(
      BaseOptions(
        baseUrl: 'http://192.168.31.98:3000',
        connectTimeout: const Duration(seconds: 5),
        receiveTimeout: const Duration(seconds: 3),
        sendTimeout: const Duration(seconds: 3),
      ),
    );
    api = Openapi(dio: _dio);
  }

  void initializeInterceptors(BuildContext context) {
    _dio.interceptors.clear();
    _dio.interceptors.add(AppInterceptor(context));
  }
}
