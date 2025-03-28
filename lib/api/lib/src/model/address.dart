//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'address.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class Address {
  /// Returns a new [Address] instance.
  Address({

    required  this.streetLine,

    required  this.latitude,

    required  this.longitude,
  });

  @JsonKey(
    
    name: r'streetLine',
    required: true,
    includeIfNull: false,
  )


  final String streetLine;



  @JsonKey(
    
    name: r'latitude',
    required: true,
    includeIfNull: false,
  )


  final num latitude;



  @JsonKey(
    
    name: r'longitude',
    required: true,
    includeIfNull: false,
  )


  final num longitude;





    @override
    bool operator ==(Object other) => identical(this, other) || other is Address &&
      other.streetLine == streetLine &&
      other.latitude == latitude &&
      other.longitude == longitude;

    @override
    int get hashCode =>
        streetLine.hashCode +
        latitude.hashCode +
        longitude.hashCode;

  factory Address.fromJson(Map<String, dynamic> json) => _$AddressFromJson(json);

  Map<String, dynamic> toJson() => _$AddressToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

