// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'geometry.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Geometry _$GeometryFromJson(Map<String, dynamic> json) =>
    $checkedCreate('Geometry', json, ($checkedConvert) {
      $checkKeys(json, requiredKeys: const ['location', 'boundary']);
      final val = Geometry(
        location: $checkedConvert(
          'location',
          (v) => GeometryLocation.fromJson(v as Map<String, dynamic>),
        ),
        boundary: $checkedConvert('boundary', (v) => v as Object),
      );
      return val;
    });

Map<String, dynamic> _$GeometryToJson(Geometry instance) => <String, dynamic>{
  'location': instance.location.toJson(),
  'boundary': instance.boundary,
};
