# openapi.api.GeoApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://192.168.31.98:3000*

Method | HTTP request | Description
------------- | ------------- | -------------
[**geoControllerGetAutocomplete**](GeoApi.md#geocontrollergetautocomplete) | **GET** /geo/autocomplete | 
[**geoControllerGetDistance**](GeoApi.md#geocontrollergetdistance) | **GET** /geo/distance | 
[**geoControllerGetGeocode**](GeoApi.md#geocontrollergetgeocode) | **GET** /geo/geocode | 
[**geoControllerGetPlaceDetails**](GeoApi.md#geocontrollergetplacedetails) | **GET** /geo/place-details | 


# **geoControllerGetAutocomplete**
> GetAutocompleteDto geoControllerGetAutocomplete(input)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getGeoApi();
final String input = input_example; // String | 

try {
    final response = api.geoControllerGetAutocomplete(input);
    print(response);
} catch on DioException (e) {
    print('Exception when calling GeoApi->geoControllerGetAutocomplete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **input** | **String**|  | 

### Return type

[**GetAutocompleteDto**](GetAutocompleteDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

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
 **destination** | **String**|  | [optional] 

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

# **geoControllerGetPlaceDetails**
> PlaceDetailResponse geoControllerGetPlaceDetails(placeId)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getGeoApi();
final String placeId = placeId_example; // String | 

try {
    final response = api.geoControllerGetPlaceDetails(placeId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling GeoApi->geoControllerGetPlaceDetails: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **placeId** | **String**|  | 

### Return type

[**PlaceDetailResponse**](PlaceDetailResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

