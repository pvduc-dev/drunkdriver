//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/geometry_location.dart';
import 'package:json_annotation/json_annotation.dart';

part 'geometry.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class Geometry {
  /// Returns a new [Geometry] instance.
  Geometry({

    required  this.location,

     this.boundary,
  });

  @JsonKey(
    
    name: r'location',
    required: true,
    includeIfNull: false,
  )


  final GeometryLocation location;



  @JsonKey(
    
    name: r'boundary',
    required: false,
    includeIfNull: false,
  )


  final Object? boundary;





    @override
    bool operator ==(Object other) => identical(this, other) || other is Geometry &&
      other.location == location &&
      other.boundary == boundary;

    @override
    int get hashCode =>
        location.hashCode +
        boundary.hashCode;

  factory Geometry.fromJson(Map<String, dynamic> json) => _$GeometryFromJson(json);

  Map<String, dynamic> toJson() => _$GeometryToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

