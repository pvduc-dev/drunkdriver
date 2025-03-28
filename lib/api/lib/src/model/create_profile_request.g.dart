// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_profile_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateProfileRequest _$CreateProfileRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('CreateProfileRequest', json, ($checkedConvert) {
  $checkKeys(
    json,
    requiredKeys: const ['address', 'name', 'isMale', 'dateOfBirth'],
  );
  final val = CreateProfileRequest(
    address: $checkedConvert(
      'address',
      (v) => Address.fromJson(v as Map<String, dynamic>),
    ),
    name: $checkedConvert('name', (v) => v as String),
    isMale: $checkedConvert('isMale', (v) => v as bool),
    dateOfBirth: $checkedConvert(
      'dateOfBirth',
      (v) => DateTime.parse(v as String),
    ),
  );
  return val;
});

Map<String, dynamic> _$CreateProfileRequestToJson(
  CreateProfileRequest instance,
) => <String, dynamic>{
  'address': instance.address.toJson(),
  'name': instance.name,
  'isMale': instance.isMale,
  'dateOfBirth': instance.dateOfBirth.toIso8601String(),
};
