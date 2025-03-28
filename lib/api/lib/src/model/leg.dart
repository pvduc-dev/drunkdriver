//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/lat_lng_literal.dart';
import 'package:openapi/src/model/distance.dart';
import 'package:openapi/src/model/step.dart';
import 'package:openapi/src/model/duration_dto.dart';
import 'package:json_annotation/json_annotation.dart';

part 'leg.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class Leg {
  /// Returns a new [Leg] instance.
  Leg({

    required  this.distance,

    required  this.duration,

    required  this.endAddress,

    required  this.endLocation,

    required  this.startAddress,

    required  this.startLocation,

    required  this.steps,
  });

  @JsonKey(
    
    name: r'distance',
    required: true,
    includeIfNull: false,
  )


  final Distance distance;



  @JsonKey(
    
    name: r'duration',
    required: true,
    includeIfNull: false,
  )


  final DurationDto duration;



  @JsonKey(
    
    name: r'end_address',
    required: true,
    includeIfNull: false,
  )


  final String endAddress;



  @JsonKey(
    
    name: r'end_location',
    required: true,
    includeIfNull: false,
  )


  final LatLngLiteral endLocation;



  @JsonKey(
    
    name: r'start_address',
    required: true,
    includeIfNull: false,
  )


  final String startAddress;



  @JsonKey(
    
    name: r'start_location',
    required: true,
    includeIfNull: false,
  )


  final LatLngLiteral startLocation;



  @JsonKey(
    
    name: r'steps',
    required: true,
    includeIfNull: false,
  )


  final List<Step> steps;





    @override
    bool operator ==(Object other) => identical(this, other) || other is Leg &&
      other.distance == distance &&
      other.duration == duration &&
      other.endAddress == endAddress &&
      other.endLocation == endLocation &&
      other.startAddress == startAddress &&
      other.startLocation == startLocation &&
      other.steps == steps;

    @override
    int get hashCode =>
        distance.hashCode +
        duration.hashCode +
        endAddress.hashCode +
        endLocation.hashCode +
        startAddress.hashCode +
        startLocation.hashCode +
        steps.hashCode;

  factory Leg.fromJson(Map<String, dynamic> json) => _$LegFromJson(json);

  Map<String, dynamic> toJson() => _$LegToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

