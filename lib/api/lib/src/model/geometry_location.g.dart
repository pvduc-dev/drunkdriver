// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'geometry_location.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GeometryLocation _$GeometryLocationFromJson(Map<String, dynamic> json) =>
    $checkedCreate('GeometryLocation', json, ($checkedConvert) {
      final val = GeometryLocation(
        lat: $checkedConvert('lat', (v) => v as num?),
        lng: $checkedConvert('lng', (v) => v as num?),
      );
      return val;
    });

Map<String, dynamic> _$GeometryLocationToJson(GeometryLocation instance) =>
    <String, dynamic>{
      if (instance.lat case final value?) 'lat': value,
      if (instance.lng case final value?) 'lng': value,
    };
