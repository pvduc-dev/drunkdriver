# openapi.api.TripsApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://192.168.31.98:3000*

Method | HTTP request | Description
------------- | ------------- | -------------
[**tripsControllerCreate**](TripsApi.md#tripscontrollercreate) | **POST** /trips | 
[**tripsControllerFindAll**](TripsApi.md#tripscontrollerfindall) | **GET** /trips | 
[**tripsControllerFindOne**](TripsApi.md#tripscontrollerfindone) | **GET** /trips/{id} | 
[**tripsControllerRemove**](TripsApi.md#tripscontrollerremove) | **DELETE** /trips/{id} | 
[**tripsControllerSse**](TripsApi.md#tripscontrollersse) | **GET** /trips/sse | 
[**tripsControllerUpdate**](TripsApi.md#tripscontrollerupdate) | **PATCH** /trips/{id} | 


# **tripsControllerCreate**
> Trip tripsControllerCreate(createTripRequest)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getTripsApi();
final CreateTripRequest createTripRequest = ; // CreateTripRequest | 

try {
    final response = api.tripsControllerCreate(createTripRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling TripsApi->tripsControllerCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createTripRequest** | [**CreateTripRequest**](CreateTripRequest.md)|  | 

### Return type

[**Trip**](Trip.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **tripsControllerFindAll**
> List<Trip> tripsControllerFindAll()



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getTripsApi();

try {
    final response = api.tripsControllerFindAll();
    print(response);
} catch on DioException (e) {
    print('Exception when calling TripsApi->tripsControllerFindAll: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List&lt;Trip&gt;**](Trip.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **tripsControllerFindOne**
> String tripsControllerFindOne(id)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getTripsApi();
final String id = id_example; // String | 

try {
    final response = api.tripsControllerFindOne(id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling TripsApi->tripsControllerFindOne: $e\n');
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

# **tripsControllerRemove**
> String tripsControllerRemove(id)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getTripsApi();
final String id = id_example; // String | 

try {
    final response = api.tripsControllerRemove(id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling TripsApi->tripsControllerRemove: $e\n');
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

# **tripsControllerSse**
> tripsControllerSse()



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getTripsApi();

try {
    api.tripsControllerSse();
} catch on DioException (e) {
    print('Exception when calling TripsApi->tripsControllerSse: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **tripsControllerUpdate**
> String tripsControllerUpdate(id, body)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getTripsApi();
final String id = id_example; // String | 
final Object body = Object; // Object | 

try {
    final response = api.tripsControllerUpdate(id, body);
    print(response);
} catch on DioException (e) {
    print('Exception when calling TripsApi->tripsControllerUpdate: $e\n');
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

