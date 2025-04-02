# openapi.api.DefaultApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://192.168.31.98:3000*

Method | HTTP request | Description
------------- | ------------- | -------------
[**driversControllerCreate**](DefaultApi.md#driverscontrollercreate) | **POST** /drivers | 
[**driversControllerFindAll**](DefaultApi.md#driverscontrollerfindall) | **GET** /drivers | 
[**driversControllerFindOne**](DefaultApi.md#driverscontrollerfindone) | **GET** /drivers/{id} | 
[**driversControllerRemove**](DefaultApi.md#driverscontrollerremove) | **DELETE** /drivers/{id} | 
[**driversControllerUpdate**](DefaultApi.md#driverscontrollerupdate) | **PATCH** /drivers/{id} | 
[**usersControllerCreate**](DefaultApi.md#userscontrollercreate) | **POST** /users | 


# **driversControllerCreate**
> String driversControllerCreate(body)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final Object body = Object; // Object | 

try {
    final response = api.driversControllerCreate(body);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->driversControllerCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **Object**|  | 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **driversControllerFindAll**
> String driversControllerFindAll()



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();

try {
    final response = api.driversControllerFindAll();
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->driversControllerFindAll: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **driversControllerFindOne**
> String driversControllerFindOne(id)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String id = id_example; // String | 

try {
    final response = api.driversControllerFindOne(id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->driversControllerFindOne: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **driversControllerRemove**
> String driversControllerRemove(id)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String id = id_example; // String | 

try {
    final response = api.driversControllerRemove(id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->driversControllerRemove: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **driversControllerUpdate**
> String driversControllerUpdate(id, body)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String id = id_example; // String | 
final Object body = Object; // Object | 

try {
    final response = api.driversControllerUpdate(id, body);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->driversControllerUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **body** | **Object**|  | 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

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

