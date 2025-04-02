//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/geometry.dart';
import 'package:json_annotation/json_annotation.dart';

part 'place_detail.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PlaceDetail {
  /// Returns a new [PlaceDetail] instance.
  PlaceDetail({

    required  this.formattedAddress,

    required  this.geometry,
  });

  @JsonKey(
    
    name: r'formatted_address',
    required: true,
    includeIfNull: false,
  )


  final String formattedAddress;



  @JsonKey(
    
    name: r'geometry',
    required: true,
    includeIfNull: false,
  )


  final Geometry geometry;





    @override
    bool operator ==(Object other) => identical(this, other) || other is PlaceDetail &&
      other.formattedAddress == formattedAddress &&
      other.geometry == geometry;

    @override
    int get hashCode =>
        formattedAddress.hashCode +
        geometry.hashCode;

  factory PlaceDetail.fromJson(Map<String, dynamic> json) => _$PlaceDetailFromJson(json);

  Map<String, dynamic> toJson() => _$PlaceDetailToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

