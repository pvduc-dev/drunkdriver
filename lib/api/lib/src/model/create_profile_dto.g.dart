// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_profile_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateProfileDto _$CreateProfileDtoFromJson(Map<String, dynamic> json) =>
    $checkedCreate('CreateProfileDto', json, ($checkedConvert) {
      $checkKeys(
        json,
        requiredKeys: const ['name', 'address', 'isMale', 'dateOfBirth'],
      );
      final val = CreateProfileDto(
        name: $checkedConvert('name', (v) => v as String),
        address: $checkedConvert('address', (v) => v as String),
        isMale: $checkedConvert('isMale', (v) => v as bool),
        dateOfBirth: $checkedConvert(
          'dateOfBirth',
          (v) => DateTime.parse(v as String),
        ),
      );
      return val;
    });

Map<String, dynamic> _$CreateProfileDtoToJson(CreateProfileDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      'address': instance.address,
      'isMale': instance.isMale,
      'dateOfBirth': instance.dateOfBirth.toIso8601String(),
    };
