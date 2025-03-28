//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'lat_lng_literal.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class LatLngLiteral {
  /// Returns a new [LatLngLiteral] instance.
  LatLngLiteral({

    required  this.lat,

    required  this.lng,
  });

  @JsonKey(
    
    name: r'lat',
    required: true,
    includeIfNull: false,
  )


  final num lat;



  @JsonKey(
    
    name: r'lng',
    required: true,
    includeIfNull: false,
  )


  final num lng;





    @override
    bool operator ==(Object other) => identical(this, other) || other is LatLngLiteral &&
      other.lat == lat &&
      other.lng == lng;

    @override
    int get hashCode =>
        lat.hashCode +
        lng.hashCode;

  factory LatLngLiteral.fromJson(Map<String, dynamic> json) => _$LatLngLiteralFromJson(json);

  Map<String, dynamic> toJson() => _$LatLngLiteralToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

