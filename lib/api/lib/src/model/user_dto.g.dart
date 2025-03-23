// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserDto _$UserDtoFromJson(Map<String, dynamic> json) =>
    $checkedCreate('UserDto', json, ($checkedConvert) {
      final val = UserDto(
        roles: $checkedConvert(
          'roles',
          (v) => (v as List<dynamic>?)?.map((e) => e as String).toList(),
        ),
      );
      return val;
    });

Map<String, dynamic> _$UserDtoToJson(UserDto instance) => <String, dynamic>{
  if (instance.roles case final value?) 'roles': value,
};
