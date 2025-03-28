// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddressComponent _$AddressComponentFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'AddressComponent',
      json,
      ($checkedConvert) {
        $checkKeys(json, requiredKeys: const ['long_name', 'short_name']);
        final val = AddressComponent(
          longName: $checkedConvert('long_name', (v) => v as String),
          shortName: $checkedConvert('short_name', (v) => v as String),
        );
        return val;
      },
      fieldKeyMap: const {'longName': 'long_name', 'shortName': 'short_name'},
    );

Map<String, dynamic> _$AddressComponentToJson(AddressComponent instance) =>
    <String, dynamic>{
      'long_name': instance.longName,
      'short_name': instance.shortName,
    };
