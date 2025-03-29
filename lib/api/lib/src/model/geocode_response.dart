//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/geometry.dart';
import 'package:json_annotation/json_annotation.dart';

part 'geocode_response.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class GeocodeResponse {
  /// Returns a new [GeocodeResponse] instance.
  GeocodeResponse({

    required  this.formattedAddress,

    required  this.geometry,

    required  this.placeId,

    required  this.name,

    required  this.address,
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



  @JsonKey(
    
    name: r'place_id',
    required: true,
    includeIfNull: false,
  )


  final String placeId;



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





    @override
    bool operator ==(Object other) => identical(this, other) || other is GeocodeResponse &&
      other.formattedAddress == formattedAddress &&
      other.geometry == geometry &&
      other.placeId == placeId &&
      other.name == name &&
      other.address == address;

    @override
    int get hashCode =>
        formattedAddress.hashCode +
        geometry.hashCode +
        placeId.hashCode +
        name.hashCode +
        address.hashCode;

  factory GeocodeResponse.fromJson(Map<String, dynamic> json) => _$GeocodeResponseFromJson(json);

  Map<String, dynamic> toJson() => _$GeocodeResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

