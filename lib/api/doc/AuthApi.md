# openapi.api.AuthApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://192.168.31.98:3000*

Method | HTTP request | Description
------------- | ------------- | -------------
[**authControllerSendOtp**](AuthApi.md#authcontrollersendotp) | **POST** /auth/send-otp | Gửi OTP đến số điện thoại
[**authControllerVerifyOtp**](AuthApi.md#authcontrollerverifyotp) | **POST** /auth/verify-otp | 


# **authControllerSendOtp**
> SendOtpResponse authControllerSendOtp(sendOtpRequest)

Gửi OTP đến số điện thoại

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getAuthApi();
final SendOtpRequest sendOtpRequest = ; // SendOtpRequest | 

try {
    final response = api.authControllerSendOtp(sendOtpRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthApi->authControllerSendOtp: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sendOtpRequest** | [**SendOtpRequest**](SendOtpRequest.md)|  | 

### Return type

[**SendOtpResponse**](SendOtpResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authControllerVerifyOtp**
> VerifyOtpResponse authControllerVerifyOtp(verifyOtpRequest)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getAuthApi();
final VerifyOtpRequest verifyOtpRequest = ; // VerifyOtpRequest | 

try {
    final response = api.authControllerVerifyOtp(verifyOtpRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthApi->authControllerVerifyOtp: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **verifyOtpRequest** | [**VerifyOtpRequest**](VerifyOtpRequest.md)|  | 

### Return type

[**VerifyOtpResponse**](VerifyOtpResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

