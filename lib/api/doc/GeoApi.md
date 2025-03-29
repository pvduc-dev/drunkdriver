# openapi.api.GeoApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://192.168.31.98:3000*

Method | HTTP request | Description
------------- | ------------- | -------------
[**geoControllerGetDistance**](GeoApi.md#geocontrollergetdistance) | **GET** /geo/distance | 
[**geoControllerGetGeocode**](GeoApi.md#geocontrollergetgeocode) | **GET** /geo/geocode | 


# **geoControllerGetDistance**
> DirectionResponse geoControllerGetDistance(origin, destination)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getGeoApi();
final String origin = origin_example; // String | 
final String destination = destination_example; // String | 

try {
    final response = api.geoControllerGetDistance(origin, destination);
    print(response);
} catch on DioException (e) {
    print('Exception when calling GeoApi->geoControllerGetDistance: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **origin** | **String**|  | 
 **destination** | **String**|  | 

### Return type

[**DirectionResponse**](DirectionResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **geoControllerGetGeocode**
> GeocodeResponse geoControllerGetGeocode(lat, lng)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getGeoApi();
final num lat = 8.14; // num | 
final num lng = 8.14; // num | 

try {
    final response = api.geoControllerGetGeocode(lat, lng);
    print(response);
} catch on DioException (e) {
    print('Exception when calling GeoApi->geoControllerGetGeocode: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **lat** | **num**|  | 
 **lng** | **num**|  | 

### Return type

[**GeocodeResponse**](GeocodeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

