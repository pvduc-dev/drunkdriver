//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/user.dart';
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

    required  this.user,
  });

  @JsonKey(
    
    name: r'accessToken',
    required: true,
    includeIfNull: false,
  )


  final String accessToken;



  @JsonKey(
    
    name: r'user',
    required: true,
    includeIfNull: false,
  )


  final User user;





    @override
    bool operator ==(Object other) => identical(this, other) || other is VerifyOtpData &&
      other.accessToken == accessToken &&
      other.user == user;

    @override
    int get hashCode =>
        accessToken.hashCode +
        user.hashCode;

  factory VerifyOtpData.fromJson(Map<String, dynamic> json) => _$VerifyOtpDataFromJson(json);

  Map<String, dynamic> toJson() => _$VerifyOtpDataToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

