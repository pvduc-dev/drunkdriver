import 'package:dio/dio.dart';
import 'package:drunkdriver/utils/dialog_utils.dart';
import 'package:flutter/material.dart';
import 'package:openapi/openapi.dart';

class ApiProvider {
  late final Openapi _api;

  ApiProvider() {
    _api = Openapi(
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
