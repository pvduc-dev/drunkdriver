//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'user_dto.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class UserDto {
  /// Returns a new [UserDto] instance.
  UserDto({

     this.roles,
  });

  @JsonKey(
    
    name: r'roles',
    required: false,
    includeIfNull: false,
  )


  final List<String>? roles;





    @override
    bool operator ==(Object other) => identical(this, other) || other is UserDto &&
      other.roles == roles;

    @override
    int get hashCode =>
        roles.hashCode;

  factory UserDto.fromJson(Map<String, dynamic> json) => _$UserDtoFromJson(json);

  Map<String, dynamic> toJson() => _$UserDtoToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

