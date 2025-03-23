//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'verify_otp_request.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class VerifyOtpRequest {
  /// Returns a new [VerifyOtpRequest] instance.
  VerifyOtpRequest({

    required  this.phone,

    required  this.code,

    required  this.verificationId,
  });

  @JsonKey(
    
    name: r'phone',
    required: true,
    includeIfNull: false,
  )


  final String phone;



  @JsonKey(
    
    name: r'code',
    required: true,
    includeIfNull: false,
  )


  final String code;



  @JsonKey(
    
    name: r'verificationId',
    required: true,
    includeIfNull: false,
  )


  final String verificationId;





    @override
    bool operator ==(Object other) => identical(this, other) || other is VerifyOtpRequest &&
      other.phone == phone &&
      other.code == code &&
      other.verificationId == verificationId;

    @override
    int get hashCode =>
        phone.hashCode +
        code.hashCode +
        verificationId.hashCode;

  factory VerifyOtpRequest.fromJson(Map<String, dynamic> json) => _$VerifyOtpRequestFromJson(json);

  Map<String, dynamic> toJson() => _$VerifyOtpRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

