// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'duration_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DurationDto _$DurationDtoFromJson(Map<String, dynamic> json) =>
    $checkedCreate('DurationDto', json, ($checkedConvert) {
      $checkKeys(json, requiredKeys: const ['text', 'value']);
      final val = DurationDto(
        text: $checkedConvert('text', (v) => v as String),
        value: $checkedConvert('value', (v) => v as num),
      );
      return val;
    });

Map<String, dynamic> _$DurationDtoToJson(DurationDto instance) =>
    <String, dynamic>{'text': instance.text, 'value': instance.value};
