// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'compound.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Compound _$CompoundFromJson(Map<String, dynamic> json) =>
    $checkedCreate('Compound', json, ($checkedConvert) {
      $checkKeys(json, requiredKeys: const ['district', 'commune', 'province']);
      final val = Compound(
        district: $checkedConvert('district', (v) => v as String),
        commune: $checkedConvert('commune', (v) => v as String),
        province: $checkedConvert('province', (v) => v as String),
      );
      return val;
    });

Map<String, dynamic> _$CompoundToJson(Compound instance) => <String, dynamic>{
  'district': instance.district,
  'commune': instance.commune,
  'province': instance.province,
};
