//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/route.dart';
import 'package:openapi/src/model/geocoded_waypoint.dart';
import 'package:json_annotation/json_annotation.dart';

part 'direction_response.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class DirectionResponse {
  /// Returns a new [DirectionResponse] instance.
  DirectionResponse({

    required  this.geocodedWaypoints,

    required  this.routes,
  });

  @JsonKey(
    
    name: r'geocoded_waypoints',
    required: true,
    includeIfNull: false,
  )


  final List<GeocodedWaypoint> geocodedWaypoints;



  @JsonKey(
    
    name: r'routes',
    required: true,
    includeIfNull: false,
  )


  final List<Route> routes;





    @override
    bool operator ==(Object other) => identical(this, other) || other is DirectionResponse &&
      other.geocodedWaypoints == geocodedWaypoints &&
      other.routes == routes;

    @override
    int get hashCode =>
        geocodedWaypoints.hashCode +
        routes.hashCode;

  factory DirectionResponse.fromJson(Map<String, dynamic> json) => _$DirectionResponseFromJson(json);

  Map<String, dynamic> toJson() => _$DirectionResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

