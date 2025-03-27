//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'verify_otp_data.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class VerifyOtpData {
  /// Returns a new [VerifyOtpData] instance.
  VerifyOtpData({

    required  this.accessToken,

    required  this.refreshToken,

    required  this.expiresIn,
  });

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



  @JsonKey(
    
    name: r'expiresIn',
    required: true,
    includeIfNull: false,
  )


  final num expiresIn;





    @override
    bool operator ==(Object other) => identical(this, other) || other is VerifyOtpData &&
      other.accessToken == accessToken &&
      other.refreshToken == refreshToken &&
      other.expiresIn == expiresIn;

    @override
    int get hashCode =>
        accessToken.hashCode +
        refreshToken.hashCode +
        expiresIn.hashCode;

  factory VerifyOtpData.fromJson(Map<String, dynamic> json) => _$VerifyOtpDataFromJson(json);

  Map<String, dynamic> toJson() => _$VerifyOtpDataToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

