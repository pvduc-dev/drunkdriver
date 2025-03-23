import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'dialog_utils.dart';

class AppInterceptor extends Interceptor {
  final BuildContext context;

  AppInterceptor(this.context);

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    String message;

    switch (err.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
        message = 'Kết nối mạng không ổn định, vui lòng thử lại';
        break;
      case DioExceptionType.connectionError:
        message = 'Không thể kết nối đến máy chủ';
        break;
      case DioExceptionType.badResponse:
        message = err.response?.data?['message'] ?? 'Đã có lỗi xảy ra, vui lòng thử lại';
        break;
      default:
        message = 'Đã có lỗi xảy ra, vui lòng thử lại';
    }

    DialogUtils.showErrorDialog(context, message: message);
    handler.next(err);
  }
}
