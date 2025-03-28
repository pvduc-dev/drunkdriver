//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'geometry_location.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class GeometryLocation {
  /// Returns a new [GeometryLocation] instance.
  GeometryLocation({

     this.lat,

     this.lng,
  });

  @JsonKey(
    
    name: r'lat',
    required: false,
    includeIfNull: false,
  )


  final num? lat;



  @JsonKey(
    
    name: r'lng',
    required: false,
    includeIfNull: false,
  )


  final num? lng;





    @override
    bool operator ==(Object other) => identical(this, other) || other is GeometryLocation &&
      other.lat == lat &&
      other.lng == lng;

    @override
    int get hashCode =>
        lat.hashCode +
        lng.hashCode;

  factory GeometryLocation.fromJson(Map<String, dynamic> json) => _$GeometryLocationFromJson(json);

  Map<String, dynamic> toJson() => _$GeometryLocationToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

