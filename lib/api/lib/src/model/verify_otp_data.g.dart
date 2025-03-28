// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_otp_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VerifyOtpData _$VerifyOtpDataFromJson(Map<String, dynamic> json) =>
    $checkedCreate('VerifyOtpData', json, ($checkedConvert) {
      $checkKeys(json, requiredKeys: const ['accessToken', 'user']);
      final val = VerifyOtpData(
        accessToken: $checkedConvert('accessToken', (v) => v as String),
        user: $checkedConvert(
          'user',
          (v) => User.fromJson(v as Map<String, dynamic>),
        ),
      );
      return val;
    });

Map<String, dynamic> _$VerifyOtpDataToJson(VerifyOtpData instance) =>
    <String, dynamic>{
      'accessToken': instance.accessToken,
      'user': instance.user.toJson(),
    };
