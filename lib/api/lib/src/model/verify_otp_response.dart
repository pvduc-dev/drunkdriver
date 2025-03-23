//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'verify_otp_response.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class VerifyOtpResponse {
  /// Returns a new [VerifyOtpResponse] instance.
  VerifyOtpResponse({

    required  this.message,

    required  this.data,

    required  this.accessToken,

    required  this.refreshToken,
  });

      /// Thông báo từ server
  @JsonKey(
    
    name: r'message',
    required: true,
    includeIfNull: false,
  )


  final String message;



      /// Dữ liệu trả về từ API
  @JsonKey(
    
    name: r'data',
    required: true,
    includeIfNull: false,
  )


  final Object data;



  @JsonKey(
    
    name: r'accessToken',
    required: true,
    includeIfNull: false,
  )


  final String accessToken;



  @JsonKey(
    
    name: r'refreshToken',
    required: true,
    includeIfNull: false,
  )


  final String refreshToken;





    @override
    bool operator ==(Object other) => identical(this, other) || other is VerifyOtpResponse &&
      other.message == message &&
      other.data == data &&
      other.accessToken == accessToken &&
      other.refreshToken == refreshToken;

    @override
    int get hashCode =>
        message.hashCode +
        data.hashCode +
        accessToken.hashCode +
        refreshToken.hashCode;

  factory VerifyOtpResponse.fromJson(Map<String, dynamic> json) => _$VerifyOtpResponseFromJson(json);

  Map<String, dynamic> toJson() => _$VerifyOtpResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

