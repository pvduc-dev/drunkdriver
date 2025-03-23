// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_otp_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VerifyOtpResponse _$VerifyOtpResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate('VerifyOtpResponse', json, ($checkedConvert) {
      $checkKeys(
        json,
        requiredKeys: const ['message', 'data', 'accessToken', 'refreshToken'],
      );
      final val = VerifyOtpResponse(
        message: $checkedConvert('message', (v) => v as String),
        data: $checkedConvert('data', (v) => v as Object),
        accessToken: $checkedConvert('accessToken', (v) => v as String),
        refreshToken: $checkedConvert('refreshToken', (v) => v as String),
      );
      return val;
    });

Map<String, dynamic> _$VerifyOtpResponseToJson(VerifyOtpResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
    };
