// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'send_otp_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SendOtpData _$SendOtpDataFromJson(Map<String, dynamic> json) =>
    $checkedCreate('SendOtpData', json, ($checkedConvert) {
      $checkKeys(json, requiredKeys: const ['otp', 'user']);
      final val = SendOtpData(
        otp: $checkedConvert(
          'otp',
          (v) => OtpDto.fromJson(v as Map<String, dynamic>),
        ),
        user: $checkedConvert(
          'user',
          (v) => UserDto.fromJson(v as Map<String, dynamic>),
        ),
      );
      return val;
    });

Map<String, dynamic> _$SendOtpDataToJson(SendOtpData instance) =>
    <String, dynamic>{
      'otp': instance.otp.toJson(),
      'user': instance.user.toJson(),
    };
