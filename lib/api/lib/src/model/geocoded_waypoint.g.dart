// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'geocoded_waypoint.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GeocodedWaypoint _$GeocodedWaypointFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'GeocodedWaypoint',
      json,
      ($checkedConvert) {
        $checkKeys(json, requiredKeys: const ['geocoder_status', 'place_id']);
        final val = GeocodedWaypoint(
          geocoderStatus: $checkedConvert(
            'geocoder_status',
            (v) => v as String,
          ),
          placeId: $checkedConvert('place_id', (v) => v as String),
        );
        return val;
      },
      fieldKeyMap: const {
        'geocoderStatus': 'geocoder_status',
        'placeId': 'place_id',
      },
    );

Map<String, dynamic> _$GeocodedWaypointToJson(GeocodedWaypoint instance) =>
    <String, dynamic>{
      'geocoder_status': instance.geocoderStatus,
      'place_id': instance.placeId,
    };
