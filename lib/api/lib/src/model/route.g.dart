// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'route.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Route _$RouteFromJson(Map<String, dynamic> json) => $checkedCreate(
  'Route',
  json,
  ($checkedConvert) {
    $checkKeys(
      json,
      requiredKeys: const [
        'bounds',
        'legs',
        'overview_polyline',
        'summary',
        'warnings',
        'waypoint_order',
      ],
    );
    final val = Route(
      bounds: $checkedConvert('bounds', (v) => v as Object),
      legs: $checkedConvert(
        'legs',
        (v) =>
            (v as List<dynamic>)
                .map((e) => Leg.fromJson(e as Map<String, dynamic>))
                .toList(),
      ),
      overviewPolyline: $checkedConvert(
        'overview_polyline',
        (v) => StepPolyline.fromJson(v as Map<String, dynamic>),
      ),
      summary: $checkedConvert('summary', (v) => v as String),
      warnings: $checkedConvert(
        'warnings',
        (v) => (v as List<dynamic>).map((e) => e as String).toList(),
      ),
      waypointOrder: $checkedConvert(
        'waypoint_order',
        (v) => (v as List<dynamic>).map((e) => e as num).toList(),
      ),
    );
    return val;
  },
  fieldKeyMap: const {
    'overviewPolyline': 'overview_polyline',
    'waypointOrder': 'waypoint_order',
  },
);

Map<String, dynamic> _$RouteToJson(Route instance) => <String, dynamic>{
  'bounds': instance.bounds,
  'legs': instance.legs.map((e) => e.toJson()).toList(),
  'overview_polyline': instance.overviewPolyline.toJson(),
  'summary': instance.summary,
  'warnings': instance.warnings,
  'waypoint_order': instance.waypointOrder,
};
