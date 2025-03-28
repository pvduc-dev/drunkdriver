// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'step.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Step _$StepFromJson(Map<String, dynamic> json) => $checkedCreate(
  'Step',
  json,
  ($checkedConvert) {
    $checkKeys(
      json,
      requiredKeys: const [
        'distance',
        'duration',
        'end_location',
        'start_location',
        'html_instructions',
        'maneuver',
        'polyline',
        'travel_mode',
      ],
    );
    final val = Step(
      distance: $checkedConvert(
        'distance',
        (v) => Distance.fromJson(v as Map<String, dynamic>),
      ),
      duration: $checkedConvert(
        'duration',
        (v) => Duration.fromJson(v as Map<String, dynamic>),
      ),
      endLocation: $checkedConvert(
        'end_location',
        (v) => LatLngLiteral.fromJson(v as Map<String, dynamic>),
      ),
      startLocation: $checkedConvert(
        'start_location',
        (v) => LatLngLiteral.fromJson(v as Map<String, dynamic>),
      ),
      htmlInstructions: $checkedConvert(
        'html_instructions',
        (v) => v as String,
      ),
      maneuver: $checkedConvert('maneuver', (v) => v as String),
      polyline: $checkedConvert(
        'polyline',
        (v) => StepPolyline.fromJson(v as Map<String, dynamic>),
      ),
      travelMode: $checkedConvert('travel_mode', (v) => v as String),
    );
    return val;
  },
  fieldKeyMap: const {
    'endLocation': 'end_location',
    'startLocation': 'start_location',
    'htmlInstructions': 'html_instructions',
    'travelMode': 'travel_mode',
  },
);

Map<String, dynamic> _$StepToJson(Step instance) => <String, dynamic>{
  'distance': instance.distance.toJson(),
  'duration': instance.duration.toJson(),
  'end_location': instance.endLocation.toJson(),
  'start_location': instance.startLocation.toJson(),
  'html_instructions': instance.htmlInstructions,
  'maneuver': instance.maneuver,
  'polyline': instance.polyline.toJson(),
  'travel_mode': instance.travelMode,
};
