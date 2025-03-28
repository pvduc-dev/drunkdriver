//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'create_profile_dto.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class CreateProfileDto {
  /// Returns a new [CreateProfileDto] instance.
  CreateProfileDto({

    required  this.name,

    required  this.address,

    required  this.isMale,

    required  this.dateOfBirth,
  });

  @JsonKey(
    
    name: r'name',
    required: true,
    includeIfNull: false,
  )


  final String name;



  @JsonKey(
    
    name: r'address',
    required: true,
    includeIfNull: false,
  )


  final String address;



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
    bool operator ==(Object other) => identical(this, other) || other is CreateProfileDto &&
      other.name == name &&
      other.address == address &&
      other.isMale == isMale &&
      other.dateOfBirth == dateOfBirth;

    @override
    int get hashCode =>
        name.hashCode +
        address.hashCode +
        isMale.hashCode +
        dateOfBirth.hashCode;

  factory CreateProfileDto.fromJson(Map<String, dynamic> json) => _$CreateProfileDtoFromJson(json);

  Map<String, dynamic> toJson() => _$CreateProfileDtoToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

