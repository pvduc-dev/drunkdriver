# openapi.api.DefaultApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://192.168.31.98:3000*

Method | HTTP request | Description
------------- | ------------- | -------------
[**usersControllerCreate**](DefaultApi.md#userscontrollercreate) | **POST** /users | 


# **usersControllerCreate**
> Object usersControllerCreate(createProfileDto)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final CreateProfileDto createProfileDto = ; // CreateProfileDto | 

try {
    final response = api.usersControllerCreate(createProfileDto);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->usersControllerCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createProfileDto** | [**CreateProfileDto**](CreateProfileDto.md)|  | 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

