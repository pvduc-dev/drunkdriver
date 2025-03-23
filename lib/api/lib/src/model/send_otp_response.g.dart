// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'send_otp_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SendOtpResponse _$SendOtpResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate('SendOtpResponse', json, ($checkedConvert) {
      $checkKeys(json, requiredKeys: const ['message', 'data']);
      final val = SendOtpResponse(
        message: $checkedConvert('message', (v) => v as String),
        data: $checkedConvert(
          'data',
          (v) => SendOtpData.fromJson(v as Map<String, dynamic>),
        ),
      );
      return val;
    });

Map<String, dynamic> _$SendOtpResponseToJson(SendOtpResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data.toJson(),
    };
