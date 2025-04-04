# openapi (EXPERIMENTAL)
The API documentation for the application

This Dart package is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: 1.0
- Generator version: 7.12.0
- Build package: org.openapitools.codegen.languages.DartDioClientCodegen

## Requirements

* Dart 2.15.0+ or Flutter 2.8.0+
* Dio 5.0.0+ (https://pub.dev/packages/dio)
* JSON Serializable 6.1.5+ (https://pub.dev/packages/json_serializable)

## Installation & Usage

### pub.dev
To use the package from [pub.dev](https://pub.dev), please include the following in pubspec.yaml
```yaml
dependencies:
  openapi: 1.0.0
```

### Github
If this Dart package is published to Github, please include the following in pubspec.yaml
```yaml
dependencies:
  openapi:
    git:
      url: https://github.com/GIT_USER_ID/GIT_REPO_ID.git
      #ref: main
```

### Local development
To use the package from your local drive, please include the following in pubspec.yaml
```yaml
dependencies:
  openapi:
    path: /path/to/openapi
```

## Getting Started

Please follow the [installation procedure](#installation--usage) and then run the following:

```dart
import 'package:openapi/openapi.dart';


final api = Openapi().getAuthApi();
final CreateProfileRequest createProfileRequest = ; // CreateProfileRequest | 

try {
    final response = await api.authControllerCreateProfile(createProfileRequest);
    print(response);
} catch on DioException (e) {
    print("Exception when calling AuthApi->authControllerCreateProfile: $e\n");
}

```

## Documentation for API Endpoints

All URIs are relative to *http://192.168.31.98:3000*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
[*AuthApi*](doc/AuthApi.md) | [**authControllerCreateProfile**](doc/AuthApi.md#authcontrollercreateprofile) | **POST** /auth/profile | 
[*AuthApi*](doc/AuthApi.md) | [**authControllerSendOtp**](doc/AuthApi.md#authcontrollersendotp) | **POST** /auth/send-otp | Gửi OTP đến số điện thoại
[*AuthApi*](doc/AuthApi.md) | [**authControllerVerifyOtp**](doc/AuthApi.md#authcontrollerverifyotp) | **POST** /auth/verify-otp | Xác thực OTP
[*DefaultApi*](doc/DefaultApi.md) | [**driversControllerCreate**](doc/DefaultApi.md#driverscontrollercreate) | **POST** /drivers | 
[*DefaultApi*](doc/DefaultApi.md) | [**driversControllerFindAll**](doc/DefaultApi.md#driverscontrollerfindall) | **GET** /drivers | 
[*DefaultApi*](doc/DefaultApi.md) | [**driversControllerFindOne**](doc/DefaultApi.md#driverscontrollerfindone) | **GET** /drivers/{id} | 
[*DefaultApi*](doc/DefaultApi.md) | [**driversControllerRemove**](doc/DefaultApi.md#driverscontrollerremove) | **DELETE** /drivers/{id} | 
[*DefaultApi*](doc/DefaultApi.md) | [**driversControllerUpdate**](doc/DefaultApi.md#driverscontrollerupdate) | **PATCH** /drivers/{id} | 
[*DefaultApi*](doc/DefaultApi.md) | [**usersControllerCreate**](doc/DefaultApi.md#userscontrollercreate) | **POST** /users | 
[*GeoApi*](doc/GeoApi.md) | [**geoControllerGetAutocomplete**](doc/GeoApi.md#geocontrollergetautocomplete) | **GET** /geo/autocomplete | 
[*GeoApi*](doc/GeoApi.md) | [**geoControllerGetDistance**](doc/GeoApi.md#geocontrollergetdistance) | **GET** /geo/distance | 
[*GeoApi*](doc/GeoApi.md) | [**geoControllerGetGeocode**](doc/GeoApi.md#geocontrollergetgeocode) | **GET** /geo/geocode | 
[*GeoApi*](doc/GeoApi.md) | [**geoControllerGetPlaceDetails**](doc/GeoApi.md#geocontrollergetplacedetails) | **GET** /geo/place-details | 
[*TripsApi*](doc/TripsApi.md) | [**tripsControllerCreate**](doc/TripsApi.md#tripscontrollercreate) | **POST** /trips | 
[*TripsApi*](doc/TripsApi.md) | [**tripsControllerFindAll**](doc/TripsApi.md#tripscontrollerfindall) | **GET** /trips | 
[*TripsApi*](doc/TripsApi.md) | [**tripsControllerFindOne**](doc/TripsApi.md#tripscontrollerfindone) | **GET** /trips/{id} | 
[*TripsApi*](doc/TripsApi.md) | [**tripsControllerRemove**](doc/TripsApi.md#tripscontrollerremove) | **DELETE** /trips/{id} | 
[*TripsApi*](doc/TripsApi.md) | [**tripsControllerSse**](doc/TripsApi.md#tripscontrollersse) | **GET** /trips/sse | 
[*TripsApi*](doc/TripsApi.md) | [**tripsControllerUpdate**](doc/TripsApi.md#tripscontrollerupdate) | **PATCH** /trips/{id} | 


## Documentation For Models

 - [Address](doc/Address.md)
 - [CreateProfileDto](doc/CreateProfileDto.md)
 - [CreateProfileRequest](doc/CreateProfileRequest.md)
 - [CreateTripRequest](doc/CreateTripRequest.md)
 - [DirectionResponse](doc/DirectionResponse.md)
 - [Distance](doc/Distance.md)
 - [DurationDto](doc/DurationDto.md)
 - [GeocodeResponse](doc/GeocodeResponse.md)
 - [GeocodedWaypoint](doc/GeocodedWaypoint.md)
 - [Geometry](doc/Geometry.md)
 - [GeometryLocation](doc/GeometryLocation.md)
 - [GetAutocompleteDto](doc/GetAutocompleteDto.md)
 - [LatLngLiteral](doc/LatLngLiteral.md)
 - [Leg](doc/Leg.md)
 - [Location](doc/Location.md)
 - [OtpDto](doc/OtpDto.md)
 - [PlaceDetail](doc/PlaceDetail.md)
 - [PlaceDetailResponse](doc/PlaceDetailResponse.md)
 - [Prediction](doc/Prediction.md)
 - [Route](doc/Route.md)
 - [SendOtpData](doc/SendOtpData.md)
 - [SendOtpRequest](doc/SendOtpRequest.md)
 - [SendOtpResponse](doc/SendOtpResponse.md)
 - [Step](doc/Step.md)
 - [StepPolyline](doc/StepPolyline.md)
 - [StructuredFormatting](doc/StructuredFormatting.md)
 - [Trip](doc/Trip.md)
 - [User](doc/User.md)
 - [UserDto](doc/UserDto.md)
 - [VerifyOtpData](doc/VerifyOtpData.md)
 - [VerifyOtpRequest](doc/VerifyOtpRequest.md)
 - [VerifyOtpResponse](doc/VerifyOtpResponse.md)


## Documentation For Authorization

Endpoints do not require authorization.


## Author



