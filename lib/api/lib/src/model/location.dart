//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'location.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class Location {
  /// Returns a new [Location] instance.
  Location({

    required  this.addressLine,

    required  this.latitude,

    required  this.longitude,
  });

  @JsonKey(
    
    name: r'addressLine',
    required: true,
    includeIfNull: false,
  )


  final String addressLine;



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
    bool operator ==(Object other) => identical(this, other) || other is Location &&
      other.addressLine == addressLine &&
      other.latitude == latitude &&
      other.longitude == longitude;

    @override
    int get hashCode =>
        addressLine.hashCode +
        latitude.hashCode +
        longitude.hashCode;

  factory Location.fromJson(Map<String, dynamic> json) => _$LocationFromJson(json);

  Map<String, dynamic> toJson() => _$LocationToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

