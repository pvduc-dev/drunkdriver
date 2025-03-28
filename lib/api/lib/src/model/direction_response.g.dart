// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'direction_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DirectionResponse _$DirectionResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'DirectionResponse',
      json,
      ($checkedConvert) {
        $checkKeys(json, requiredKeys: const ['geocoded_waypoints', 'routes']);
        final val = DirectionResponse(
          geocodedWaypoints: $checkedConvert(
            'geocoded_waypoints',
            (v) =>
                (v as List<dynamic>)
                    .map(
                      (e) =>
                          GeocodedWaypoint.fromJson(e as Map<String, dynamic>),
                    )
                    .toList(),
          ),
          routes: $checkedConvert(
            'routes',
            (v) =>
                (v as List<dynamic>)
                    .map((e) => Route.fromJson(e as Map<String, dynamic>))
                    .toList(),
          ),
        );
        return val;
      },
      fieldKeyMap: const {'geocodedWaypoints': 'geocoded_waypoints'},
    );

Map<String, dynamic> _$DirectionResponseToJson(DirectionResponse instance) =>
    <String, dynamic>{
      'geocoded_waypoints':
          instance.geocodedWaypoints.map((e) => e.toJson()).toList(),
      'routes': instance.routes.map((e) => e.toJson()).toList(),
    };
