//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/send_otp_data.dart';
import 'package:json_annotation/json_annotation.dart';

part 'send_otp_response.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class SendOtpResponse {
  /// Returns a new [SendOtpResponse] instance.
  SendOtpResponse({

    required  this.message,

    required  this.data,
  });

  @JsonKey(
    
    name: r'message',
    required: true,
    includeIfNull: false,
  )


  final String message;



  @JsonKey(
    
    name: r'data',
    required: true,
    includeIfNull: false,
  )


  final SendOtpData data;





    @override
    bool operator ==(Object other) => identical(this, other) || other is SendOtpResponse &&
      other.message == message &&
      other.data == data;

    @override
    int get hashCode =>
        message.hashCode +
        data.hashCode;

  factory SendOtpResponse.fromJson(Map<String, dynamic> json) => _$SendOtpResponseFromJson(json);

  Map<String, dynamic> toJson() => _$SendOtpResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

