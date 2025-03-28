// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => $checkedCreate('User', json, (
  $checkedConvert,
) {
  $checkKeys(
    json,
    requiredKeys: const [
      'id',
      'phone',
      'roles',
      'isActive',
      'createdAt',
      'updatedAt',
    ],
  );
  final val = User(
    address: $checkedConvert(
      'address',
      (v) => v == null ? null : Location.fromJson(v as Map<String, dynamic>),
    ),
    id: $checkedConvert('id', (v) => v as num),
    name: $checkedConvert('name', (v) => v as String?),
    phone: $checkedConvert('phone', (v) => v as String),
    email: $checkedConvert('email', (v) => v as String?),
    isMale: $checkedConvert('isMale', (v) => v as bool?),
    dateOfBirth: $checkedConvert(
      'dateOfBirth',
      (v) => v == null ? null : DateTime.parse(v as String),
    ),
    roles: $checkedConvert(
      'roles',
      (v) => (v as List<dynamic>).map((e) => e as String).toList(),
    ),
    isActive: $checkedConvert('isActive', (v) => v as bool),
    createdAt: $checkedConvert('createdAt', (v) => DateTime.parse(v as String)),
    updatedAt: $checkedConvert('updatedAt', (v) => DateTime.parse(v as String)),
  );
  return val;
});

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
  if (instance.address?.toJson() case final value?) 'address': value,
  'id': instance.id,
  if (instance.name case final value?) 'name': value,
  'phone': instance.phone,
  if (instance.email case final value?) 'email': value,
  if (instance.isMale case final value?) 'isMale': value,
  if (instance.dateOfBirth?.toIso8601String() case final value?)
    'dateOfBirth': value,
  'roles': instance.roles,
  'isActive': instance.isActive,
  'createdAt': instance.createdAt.toIso8601String(),
  'updatedAt': instance.updatedAt.toIso8601String(),
};
