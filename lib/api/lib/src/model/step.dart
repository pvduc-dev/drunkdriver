//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/lat_lng_literal.dart';
import 'package:openapi/src/model/distance.dart';
import 'package:openapi/src/model/duration.dart';
import 'package:openapi/src/model/step_polyline.dart';
import 'package:json_annotation/json_annotation.dart';

part 'step.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class Step {
  /// Returns a new [Step] instance.
  Step({

    required  this.distance,

    required  this.duration,

    required  this.endLocation,

    required  this.startLocation,

    required  this.htmlInstructions,

    required  this.maneuver,

    required  this.polyline,

    required  this.travelMode,
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


  final Duration duration;



  @JsonKey(
    
    name: r'end_location',
    required: true,
    includeIfNull: false,
  )


  final LatLngLiteral endLocation;



  @JsonKey(
    
    name: r'start_location',
    required: true,
    includeIfNull: false,
  )


  final LatLngLiteral startLocation;



  @JsonKey(
    
    name: r'html_instructions',
    required: true,
    includeIfNull: false,
  )


  final String htmlInstructions;



  @JsonKey(
    
    name: r'maneuver',
    required: true,
    includeIfNull: false,
  )


  final String maneuver;



  @JsonKey(
    
    name: r'polyline',
    required: true,
    includeIfNull: false,
  )


  final StepPolyline polyline;



  @JsonKey(
    
    name: r'travel_mode',
    required: true,
    includeIfNull: false,
  )


  final String travelMode;





    @override
    bool operator ==(Object other) => identical(this, other) || other is Step &&
      other.distance == distance &&
      other.duration == duration &&
      other.endLocation == endLocation &&
      other.startLocation == startLocation &&
      other.htmlInstructions == htmlInstructions &&
      other.maneuver == maneuver &&
      other.polyline == polyline &&
      other.travelMode == travelMode;

    @override
    int get hashCode =>
        distance.hashCode +
        duration.hashCode +
        endLocation.hashCode +
        startLocation.hashCode +
        htmlInstructions.hashCode +
        maneuver.hashCode +
        polyline.hashCode +
        travelMode.hashCode;

  factory Step.fromJson(Map<String, dynamic> json) => _$StepFromJson(json);

  Map<String, dynamic> toJson() => _$StepToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

