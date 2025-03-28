//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'geocoded_waypoint.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class GeocodedWaypoint {
  /// Returns a new [GeocodedWaypoint] instance.
  GeocodedWaypoint({

    required  this.geocoderStatus,

    required  this.placeId,
  });

  @JsonKey(
    
    name: r'geocoder_status',
    required: true,
    includeIfNull: false,
  )


  final String geocoderStatus;



  @JsonKey(
    
    name: r'place_id',
    required: true,
    includeIfNull: false,
  )


  final String placeId;





    @override
    bool operator ==(Object other) => identical(this, other) || other is GeocodedWaypoint &&
      other.geocoderStatus == geocoderStatus &&
      other.placeId == placeId;

    @override
    int get hashCode =>
        geocoderStatus.hashCode +
        placeId.hashCode;

  factory GeocodedWaypoint.fromJson(Map<String, dynamic> json) => _$GeocodedWaypointFromJson(json);

  Map<String, dynamic> toJson() => _$GeocodedWaypointToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

