// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'plus_code.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlusCode _$PlusCodeFromJson(Map<String, dynamic> json) => $checkedCreate(
  'PlusCode',
  json,
  ($checkedConvert) {
    $checkKeys(json, requiredKeys: const ['compound_code', 'global_code']);
    final val = PlusCode(
      compoundCode: $checkedConvert('compound_code', (v) => v as String),
      globalCode: $checkedConvert('global_code', (v) => v as String),
    );
    return val;
  },
  fieldKeyMap: const {
    'compoundCode': 'compound_code',
    'globalCode': 'global_code',
  },
);

Map<String, dynamic> _$PlusCodeToJson(PlusCode instance) => <String, dynamic>{
  'compound_code': instance.compoundCode,
  'global_code': instance.globalCode,
};
