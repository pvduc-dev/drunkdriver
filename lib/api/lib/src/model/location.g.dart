// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Location _$LocationFromJson(Map<String, dynamic> json) =>
    $checkedCreate('Location', json, ($checkedConvert) {
      $checkKeys(
        json,
        requiredKeys: const ['addressLine', 'latitude', 'longitude'],
      );
      final val = Location(
        addressLine: $checkedConvert('addressLine', (v) => v as String),
        latitude: $checkedConvert('latitude', (v) => v as num),
        longitude: $checkedConvert('longitude', (v) => v as num),
      );
      return val;
    });

Map<String, dynamic> _$LocationToJson(Location instance) => <String, dynamic>{
  'addressLine': instance.addressLine,
  'latitude': instance.latitude,
  'longitude': instance.longitude,
};
