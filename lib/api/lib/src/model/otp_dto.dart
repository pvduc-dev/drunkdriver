//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'otp_dto.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class OtpDto {
  /// Returns a new [OtpDto] instance.
  OtpDto({

    required  this.verificationId,

    required  this.expiresAt,

    required  this.phone,
  });

  @JsonKey(
    
    name: r'verificationId',
    required: true,
    includeIfNull: false,
  )


  final String verificationId;



  @JsonKey(
    
    name: r'expiresAt',
    required: true,
    includeIfNull: false,
  )


  final DateTime expiresAt;



  @JsonKey(
    
    name: r'phone',
    required: true,
    includeIfNull: false,
  )


  final String phone;





    @override
    bool operator ==(Object other) => identical(this, other) || other is OtpDto &&
      other.verificationId == verificationId &&
      other.expiresAt == expiresAt &&
      other.phone == phone;

    @override
    int get hashCode =>
        verificationId.hashCode +
        expiresAt.hashCode +
        phone.hashCode;

  factory OtpDto.fromJson(Map<String, dynamic> json) => _$OtpDtoFromJson(json);

  Map<String, dynamic> toJson() => _$OtpDtoToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

