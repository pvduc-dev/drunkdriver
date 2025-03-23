// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'otp_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OtpDto _$OtpDtoFromJson(Map<String, dynamic> json) =>
    $checkedCreate('OtpDto', json, ($checkedConvert) {
      $checkKeys(
        json,
        requiredKeys: const ['verificationId', 'expiresAt', 'phone'],
      );
      final val = OtpDto(
        verificationId: $checkedConvert('verificationId', (v) => v as String),
        expiresAt: $checkedConvert(
          'expiresAt',
          (v) => DateTime.parse(v as String),
        ),
        phone: $checkedConvert('phone', (v) => v as String),
      );
      return val;
    });

Map<String, dynamic> _$OtpDtoToJson(OtpDto instance) => <String, dynamic>{
  'verificationId': instance.verificationId,
  'expiresAt': instance.expiresAt.toIso8601String(),
  'phone': instance.phone,
};
