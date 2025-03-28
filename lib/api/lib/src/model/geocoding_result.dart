//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/address_component.dart';
import 'package:openapi/src/model/plus_code.dart';
import 'package:openapi/src/model/geometry.dart';
import 'package:openapi/src/model/compound.dart';
import 'package:json_annotation/json_annotation.dart';

part 'geocoding_result.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class GeocodingResult {
  /// Returns a new [GeocodingResult] instance.
  GeocodingResult({

    required  this.addressComponents,

    required  this.formattedAddress,

    required  this.geometry,

    required  this.placeId,

    required  this.reference,

    required  this.plusCode,

    required  this.compound,

    required  this.types,

    required  this.name,

    required  this.address,
  });

  @JsonKey(
    
    name: r'address_components',
    required: true,
    includeIfNull: false,
  )


  final List<AddressComponent> addressComponents;



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
    
    name: r'reference',
    required: true,
    includeIfNull: false,
  )


  final String reference;



  @JsonKey(
    
    name: r'plus_code',
    required: true,
    includeIfNull: false,
  )


  final PlusCode plusCode;



  @JsonKey(
    
    name: r'compound',
    required: true,
    includeIfNull: false,
  )


  final Compound compound;



  @JsonKey(
    
    name: r'types',
    required: true,
    includeIfNull: false,
  )


  final List<String> types;



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
    bool operator ==(Object other) => identical(this, other) || other is GeocodingResult &&
      other.addressComponents == addressComponents &&
      other.formattedAddress == formattedAddress &&
      other.geometry == geometry &&
      other.placeId == placeId &&
      other.reference == reference &&
      other.plusCode == plusCode &&
      other.compound == compound &&
      other.types == types &&
      other.name == name &&
      other.address == address;

    @override
    int get hashCode =>
        addressComponents.hashCode +
        formattedAddress.hashCode +
        geometry.hashCode +
        placeId.hashCode +
        reference.hashCode +
        plusCode.hashCode +
        compound.hashCode +
        types.hashCode +
        name.hashCode +
        address.hashCode;

  factory GeocodingResult.fromJson(Map<String, dynamic> json) => _$GeocodingResultFromJson(json);

  Map<String, dynamic> toJson() => _$GeocodingResultToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

