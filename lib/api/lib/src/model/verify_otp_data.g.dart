// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_otp_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VerifyOtpData _$VerifyOtpDataFromJson(Map<String, dynamic> json) =>
    $checkedCreate('VerifyOtpData', json, ($checkedConvert) {
      $checkKeys(
        json,
        requiredKeys: const ['accessToken', 'refreshToken', 'expiresIn'],
      );
      final val = VerifyOtpData(
        accessToken: $checkedConvert('accessToken', (v) => v as String),
        refreshToken: $checkedConvert('refreshToken', (v) => v as String),
        expiresIn: $checkedConvert('expiresIn', (v) => v as num),
      );
      return val;
    });

Map<String, dynamic> _$VerifyOtpDataToJson(VerifyOtpData instance) =>
    <String, dynamic>{
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
      'expiresIn': instance.expiresIn,
    };
