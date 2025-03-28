//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/leg.dart';
import 'package:openapi/src/model/step_polyline.dart';
import 'package:json_annotation/json_annotation.dart';

part 'route.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class Route {
  /// Returns a new [Route] instance.
  Route({

    required  this.bounds,

    required  this.legs,

    required  this.overviewPolyline,

    required  this.summary,

    required  this.warnings,

    required  this.waypointOrder,
  });

  @JsonKey(
    
    name: r'bounds',
    required: true,
    includeIfNull: false,
  )


  final Object bounds;



  @JsonKey(
    
    name: r'legs',
    required: true,
    includeIfNull: false,
  )


  final List<Leg> legs;



  @JsonKey(
    
    name: r'overview_polyline',
    required: true,
    includeIfNull: false,
  )


  final StepPolyline overviewPolyline;



  @JsonKey(
    
    name: r'summary',
    required: true,
    includeIfNull: false,
  )


  final String summary;



  @JsonKey(
    
    name: r'warnings',
    required: true,
    includeIfNull: false,
  )


  final List<String> warnings;



  @JsonKey(
    
    name: r'waypoint_order',
    required: true,
    includeIfNull: false,
  )


  final List<num> waypointOrder;





    @override
    bool operator ==(Object other) => identical(this, other) || other is Route &&
      other.bounds == bounds &&
      other.legs == legs &&
      other.overviewPolyline == overviewPolyline &&
      other.summary == summary &&
      other.warnings == warnings &&
      other.waypointOrder == waypointOrder;

    @override
    int get hashCode =>
        bounds.hashCode +
        legs.hashCode +
        overviewPolyline.hashCode +
        summary.hashCode +
        warnings.hashCode +
        waypointOrder.hashCode;

  factory Route.fromJson(Map<String, dynamic> json) => _$RouteFromJson(json);

  Map<String, dynamic> toJson() => _$RouteToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

