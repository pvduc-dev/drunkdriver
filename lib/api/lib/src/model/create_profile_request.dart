//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/address.dart';
import 'package:json_annotation/json_annotation.dart';

part 'create_profile_request.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class CreateProfileRequest {
  /// Returns a new [CreateProfileRequest] instance.
  CreateProfileRequest({

    required  this.address,

    required  this.name,

    required  this.isMale,

    required  this.dateOfBirth,
  });

  @JsonKey(
    
    name: r'address',
    required: true,
    includeIfNull: false,
  )


  final Address address;



  @JsonKey(
    
    name: r'name',
    required: true,
    includeIfNull: false,
  )


  final String name;



  @JsonKey(
    
    name: r'isMale',
    required: true,
    includeIfNull: false,
  )


  final bool isMale;



  @JsonKey(
    
    name: r'dateOfBirth',
    required: true,
    includeIfNull: false,
  )


  final DateTime dateOfBirth;





    @override
    bool operator ==(Object other) => identical(this, other) || other is CreateProfileRequest &&
      other.address == address &&
      other.name == name &&
      other.isMale == isMale &&
      other.dateOfBirth == dateOfBirth;

    @override
    int get hashCode =>
        address.hashCode +
        name.hashCode +
        isMale.hashCode +
        dateOfBirth.hashCode;

  factory CreateProfileRequest.fromJson(Map<String, dynamic> json) => _$CreateProfileRequestFromJson(json);

  Map<String, dynamic> toJson() => _$CreateProfileRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

