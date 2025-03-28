// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'duration.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Duration _$DurationFromJson(Map<String, dynamic> json) =>
    $checkedCreate('Duration', json, ($checkedConvert) {
      $checkKeys(json, requiredKeys: const ['text', 'value']);
      final val = Duration(
        text: $checkedConvert('text', (v) => v as String),
        value: $checkedConvert('value', (v) => v as num),
      );
      return val;
    });

Map<String, dynamic> _$DurationToJson(Duration instance) => <String, dynamic>{
  'text': instance.text,
  'value': instance.value,
};
