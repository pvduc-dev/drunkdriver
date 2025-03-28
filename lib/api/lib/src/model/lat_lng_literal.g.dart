// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lat_lng_literal.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LatLngLiteral _$LatLngLiteralFromJson(Map<String, dynamic> json) =>
    $checkedCreate('LatLngLiteral', json, ($checkedConvert) {
      $checkKeys(json, requiredKeys: const ['lat', 'lng']);
      final val = LatLngLiteral(
        lat: $checkedConvert('lat', (v) => v as num),
        lng: $checkedConvert('lng', (v) => v as num),
      );
      return val;
    });

Map<String, dynamic> _$LatLngLiteralToJson(LatLngLiteral instance) =>
    <String, dynamic>{'lat': instance.lat, 'lng': instance.lng};
