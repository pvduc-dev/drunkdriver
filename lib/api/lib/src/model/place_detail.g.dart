// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlaceDetail _$PlaceDetailFromJson(Map<String, dynamic> json) =>
    $checkedCreate('PlaceDetail', json, ($checkedConvert) {
      $checkKeys(json, requiredKeys: const ['formatted_address', 'geometry']);
      final val = PlaceDetail(
        formattedAddress: $checkedConvert(
          'formatted_address',
          (v) => v as String,
        ),
        geometry: $checkedConvert(
          'geometry',
          (v) => Geometry.fromJson(v as Map<String, dynamic>),
        ),
      );
      return val;
    }, fieldKeyMap: const {'formattedAddress': 'formatted_address'});

Map<String, dynamic> _$PlaceDetailToJson(PlaceDetail instance) =>
    <String, dynamic>{
      'formatted_address': instance.formattedAddress,
      'geometry': instance.geometry.toJson(),
    };
