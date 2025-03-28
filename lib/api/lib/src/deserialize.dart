import 'package:openapi/src/model/address.dart';
import 'package:openapi/src/model/address_component.dart';
import 'package:openapi/src/model/compound.dart';
import 'package:openapi/src/model/create_profile_dto.dart';
import 'package:openapi/src/model/create_profile_request.dart';
import 'package:openapi/src/model/create_trip_request.dart';
import 'package:openapi/src/model/direction_response.dart';
import 'package:openapi/src/model/distance.dart';
import 'package:openapi/src/model/duration_dto.dart';
import 'package:openapi/src/model/geocoded_waypoint.dart';
import 'package:openapi/src/model/geocoding_result.dart';
import 'package:openapi/src/model/geometry.dart';
import 'package:openapi/src/model/geometry_location.dart';
import 'package:openapi/src/model/lat_lng_literal.dart';
import 'package:openapi/src/model/leg.dart';
import 'package:openapi/src/model/location.dart';
import 'package:openapi/src/model/otp_dto.dart';
import 'package:openapi/src/model/plus_code.dart';
import 'package:openapi/src/model/route.dart';
import 'package:openapi/src/model/send_otp_data.dart';
import 'package:openapi/src/model/send_otp_request.dart';
import 'package:openapi/src/model/send_otp_response.dart';
import 'package:openapi/src/model/step.dart';
import 'package:openapi/src/model/step_polyline.dart';
import 'package:openapi/src/model/trip.dart';
import 'package:openapi/src/model/user.dart';
import 'package:openapi/src/model/user_dto.dart';
import 'package:openapi/src/model/verify_otp_data.dart';
import 'package:openapi/src/model/verify_otp_request.dart';
import 'package:openapi/src/model/verify_otp_response.dart';

final _regList = RegExp(r'^List<(.*)>$');
final _regSet = RegExp(r'^Set<(.*)>$');
final _regMap = RegExp(r'^Map<String,(.*)>$');

  ReturnType deserialize<ReturnType, BaseType>(dynamic value, String targetType, {bool growable= true}) {
      switch (targetType) {
        case 'String':
          return '$value' as ReturnType;
        case 'int':
          return (value is int ? value : int.parse('$value')) as ReturnType;
        case 'bool':
          if (value is bool) {
            return value as ReturnType;
          }
          final valueString = '$value'.toLowerCase();
          return (valueString == 'true' || valueString == '1') as ReturnType;
        case 'double':
          return (value is double ? value : double.parse('$value')) as ReturnType;
        case 'Address':
          return Address.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'AddressComponent':
          return AddressComponent.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'Compound':
          return Compound.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'CreateProfileDto':
          return CreateProfileDto.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'CreateProfileRequest':
          return CreateProfileRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'CreateTripRequest':
          return CreateTripRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'DirectionResponse':
          return DirectionResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'Distance':
          return Distance.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'DurationDto':
          return DurationDto.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'GeocodedWaypoint':
          return GeocodedWaypoint.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'GeocodingResult':
          return GeocodingResult.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'Geometry':
          return Geometry.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'GeometryLocation':
          return GeometryLocation.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'LatLngLiteral':
          return LatLngLiteral.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'Leg':
          return Leg.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'Location':
          return Location.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'OtpDto':
          return OtpDto.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PlusCode':
          return PlusCode.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'Route':
          return Route.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'SendOtpData':
          return SendOtpData.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'SendOtpRequest':
          return SendOtpRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'SendOtpResponse':
          return SendOtpResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'Step':
          return Step.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'StepPolyline':
          return StepPolyline.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'Trip':
          return Trip.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'User':
          return User.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'UserDto':
          return UserDto.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'VerifyOtpData':
          return VerifyOtpData.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'VerifyOtpRequest':
          return VerifyOtpRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'VerifyOtpResponse':
          return VerifyOtpResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        default:
          RegExpMatch? match;

          if (value is List && (match = _regList.firstMatch(targetType)) != null) {
            targetType = match![1]!; // ignore: parameter_assignments
            return value
              .map<BaseType>((dynamic v) => deserialize<BaseType, BaseType>(v, targetType, growable: growable))
              .toList(growable: growable) as ReturnType;
          }
          if (value is Set && (match = _regSet.firstMatch(targetType)) != null) {
            targetType = match![1]!; // ignore: parameter_assignments
            return value
              .map<BaseType>((dynamic v) => deserialize<BaseType, BaseType>(v, targetType, growable: growable))
              .toSet() as ReturnType;
          }
          if (value is Map && (match = _regMap.firstMatch(targetType)) != null) {
            targetType = match![1]!.trim(); // ignore: parameter_assignments
            return Map<String, BaseType>.fromIterables(
              value.keys as Iterable<String>,
              value.values.map((dynamic v) => deserialize<BaseType, BaseType>(v, targetType, growable: growable)),
            ) as ReturnType;
          }
          break;
    }
    throw Exception('Cannot deserialize');
  }