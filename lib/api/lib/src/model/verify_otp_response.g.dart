// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_otp_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VerifyOtpResponse _$VerifyOtpResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate('VerifyOtpResponse', json, ($checkedConvert) {
      $checkKeys(json, requiredKeys: const ['data', 'message']);
      final val = VerifyOtpResponse(
        data: $checkedConvert(
          'data',
          (v) => VerifyOtpData.fromJson(v as Map<String, dynamic>),
        ),
        message: $checkedConvert('message', (v) => v as String),
      );
      return val;
    });

Map<String, dynamic> _$VerifyOtpResponseToJson(VerifyOtpResponse instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
      'message': instance.message,
    };
