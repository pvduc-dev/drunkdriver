// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'structured_formatting.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StructuredFormatting _$StructuredFormattingFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'StructuredFormatting',
  json,
  ($checkedConvert) {
    $checkKeys(json, requiredKeys: const ['main_text', 'secondary_text']);
    final val = StructuredFormatting(
      mainText: $checkedConvert('main_text', (v) => v as String),
      secondaryText: $checkedConvert('secondary_text', (v) => v as String),
    );
    return val;
  },
  fieldKeyMap: const {
    'mainText': 'main_text',
    'secondaryText': 'secondary_text',
  },
);

Map<String, dynamic> _$StructuredFormattingToJson(
  StructuredFormatting instance,
) => <String, dynamic>{
  'main_text': instance.mainText,
  'secondary_text': instance.secondaryText,
};
