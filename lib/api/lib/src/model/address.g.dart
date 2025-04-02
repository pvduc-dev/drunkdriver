// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Address _$AddressFromJson(Map<String, dynamic> json) =>
    $checkedCreate('Address', json, ($checkedConvert) {
      $checkKeys(
        json,
        requiredKeys: const ['addressLine', 'latitude', 'longitude'],
      );
      final val = Address(
        addressLine: $checkedConvert('addressLine', (v) => v as String),
        latitude: $checkedConvert('latitude', (v) => v as num),
        longitude: $checkedConvert('longitude', (v) => v as num),
      );
      return val;
    });

Map<String, dynamic> _$AddressToJson(Address instance) => <String, dynamic>{
  'addressLine': instance.addressLine,
  'latitude': instance.latitude,
  'longitude': instance.longitude,
};
