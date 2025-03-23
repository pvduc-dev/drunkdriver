// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'send_otp_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SendOtpRequest _$SendOtpRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate('SendOtpRequest', json, ($checkedConvert) {
      $checkKeys(json, requiredKeys: const ['phone']);
      final val = SendOtpRequest(
        phone: $checkedConvert('phone', (v) => v as String),
      );
      return val;
    });

Map<String, dynamic> _$SendOtpRequestToJson(SendOtpRequest instance) =>
    <String, dynamic>{'phone': instance.phone};
