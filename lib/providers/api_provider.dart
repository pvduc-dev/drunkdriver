import 'package:dio/dio.dart';
import 'package:drunkdriver/utils/dialog_utils.dart';
import 'package:flutter/material.dart';
import 'package:openapi/openapi.dart';

class ApiProvider {
  late final Openapi _api;

  ApiProvider() {
    _api = Openapi(
      dio: Dio(
        BaseOptions(
          baseUrl: 'http://192.168.31.98:3000',
          connectTimeout: const Duration(milliseconds: 5000),
          receiveTimeout: const Duration(milliseconds: 3000),
          headers: {
            'Content-Type': 'application/json',
            'Authorization': 'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwicGhvbmUiOiIrODQ4NjU3MDc5MDYiLCJlbWFpbCI6bnVsbCwicm9sZSI6W10sImlhdCI6MTc0MzQ5OTIwNTA5MSwiZXhwIjoxNzQzNTMwNzYyNjkxfQ.i7zVZ6wKxzYHvzrDt7LtbNXU1zuj0llh9vZ8O8S1MBY',
          },
        ),
      ),
      interceptors: [
        InterceptorsWrapper(
          onError: (DioException error, ErrorInterceptorHandler handler) {
            final context = error.requestOptions.extra['context'];
            if (context is BuildContext) {
              if (error.requestOptions.extra['isLoading'] == true) {
                Navigator.pop(context);
              }
              DialogUtils.showErrorDialog(
                context,
                message: error.response?.data['message'],
              );
            }
            handler.next(error);
          },
          onRequest: (
            RequestOptions options,
            RequestInterceptorHandler handler,
          ) {
            final context = options.extra['context'];
            if (context is BuildContext) {
              if (options.extra['isLoading'] == true) {
                DialogUtils.showLoadingDialog(context);
              }
            }
            handler.next(options);
          },
          onResponse: (Response response, ResponseInterceptorHandler handler) {
            final context = response.requestOptions.extra['context'];
            if (context is BuildContext) {
              if (response.requestOptions.extra['isLoading'] == true) {
                Navigator.pop(context);
              }
            }
            handler.next(response);
          },
        ),
      ],
    );
  }

  Openapi get api => _api;
}
