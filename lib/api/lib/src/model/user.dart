//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/location.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class User {
  /// Returns a new [User] instance.
  User({

     this.address,

    required  this.id,

     this.name,

    required  this.phone,

     this.email,

     this.isMale,

     this.dateOfBirth,

    required  this.roles,

    required  this.isActive,

    required  this.createdAt,

    required  this.updatedAt,
  });

  @JsonKey(
    
    name: r'address',
    required: false,
    includeIfNull: false,
  )


  final Location? address;



  @JsonKey(
    
    name: r'id',
    required: true,
    includeIfNull: false,
  )


  final num id;



  @JsonKey(
    
    name: r'name',
    required: false,
    includeIfNull: false,
  )


  final String? name;



  @JsonKey(
    
    name: r'phone',
    required: true,
    includeIfNull: false,
  )


  final String phone;



  @JsonKey(
    
    name: r'email',
    required: false,
    includeIfNull: false,
  )


  final String? email;



  @JsonKey(
    
    name: r'isMale',
    required: false,
    includeIfNull: false,
  )


  final bool? isMale;



  @JsonKey(
    
    name: r'dateOfBirth',
    required: false,
    includeIfNull: false,
  )


  final DateTime? dateOfBirth;



  @JsonKey(
    
    name: r'roles',
    required: true,
    includeIfNull: false,
  )


  final List<String> roles;



  @JsonKey(
    
    name: r'isActive',
    required: true,
    includeIfNull: false,
  )


  final bool isActive;



  @JsonKey(
    
    name: r'createdAt',
    required: true,
    includeIfNull: false,
  )


  final DateTime createdAt;



  @JsonKey(
    
    name: r'updatedAt',
    required: true,
    includeIfNull: false,
  )


  final DateTime updatedAt;





    @override
    bool operator ==(Object other) => identical(this, other) || other is User &&
      other.address == address &&
      other.id == id &&
      other.name == name &&
      other.phone == phone &&
      other.email == email &&
      other.isMale == isMale &&
      other.dateOfBirth == dateOfBirth &&
      other.roles == roles &&
      other.isActive == isActive &&
      other.createdAt == createdAt &&
      other.updatedAt == updatedAt;

    @override
    int get hashCode =>
        address.hashCode +
        id.hashCode +
        name.hashCode +
        phone.hashCode +
        email.hashCode +
        isMale.hashCode +
        dateOfBirth.hashCode +
        roles.hashCode +
        isActive.hashCode +
        createdAt.hashCode +
        updatedAt.hashCode;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

