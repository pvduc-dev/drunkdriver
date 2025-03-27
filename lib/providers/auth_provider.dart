import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class AuthProvider extends ChangeNotifier {
  final Dio _dio = Dio(BaseOptions(baseUrl: 'http://192.168.31.98:3000'));

  Future<void> register(String email, String password) async {
    try {
      final response = await _dio.post('/register', data: {
        'email': email,
        'password': password,
      });
      if (response.statusCode == 200) {
        notifyListeners();
      }
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<void> login(String email, String password) async {
    try {
      final response = await _dio.post('/login', data: {
        'email': email,
        'password': password,
      });
      if (response.statusCode == 200) {
        notifyListeners();
      }
    } catch (e) {
      throw Exception(e);
    }
  }
}
