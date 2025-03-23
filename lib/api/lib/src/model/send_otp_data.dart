//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/otp_dto.dart';
import 'package:openapi/src/model/user_dto.dart';
import 'package:json_annotation/json_annotation.dart';

part 'send_otp_data.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class SendOtpData {
  /// Returns a new [SendOtpData] instance.
  SendOtpData({

    required  this.otp,

    required  this.user,
  });

  @JsonKey(
    
    name: r'otp',
    required: true,
    includeIfNull: false,
  )


  final OtpDto otp;



  @JsonKey(
    
    name: r'user',
    required: true,
    includeIfNull: false,
  )


  final UserDto user;





    @override
    bool operator ==(Object other) => identical(this, other) || other is SendOtpData &&
      other.otp == otp &&
      other.user == user;

    @override
    int get hashCode =>
        otp.hashCode +
        user.hashCode;

  factory SendOtpData.fromJson(Map<String, dynamic> json) => _$SendOtpDataFromJson(json);

  Map<String, dynamic> toJson() => _$SendOtpDataToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

