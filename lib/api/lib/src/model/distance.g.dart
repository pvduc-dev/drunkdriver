// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'distance.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Distance _$DistanceFromJson(Map<String, dynamic> json) =>
    $checkedCreate('Distance', json, ($checkedConvert) {
      $checkKeys(json, requiredKeys: const ['text', 'value']);
      final val = Distance(
        text: $checkedConvert('text', (v) => v as String),
        value: $checkedConvert('value', (v) => v as num),
      );
      return val;
    });

Map<String, dynamic> _$DistanceToJson(Distance instance) => <String, dynamic>{
  'text': instance.text,
  'value': instance.value,
};
