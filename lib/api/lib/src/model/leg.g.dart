// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'leg.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Leg _$LegFromJson(Map<String, dynamic> json) => $checkedCreate(
  'Leg',
  json,
  ($checkedConvert) {
    $checkKeys(
      json,
      requiredKeys: const [
        'distance',
        'duration',
        'end_address',
        'end_location',
        'start_address',
        'start_location',
        'steps',
      ],
    );
    final val = Leg(
      distance: $checkedConvert(
        'distance',
        (v) => Distance.fromJson(v as Map<String, dynamic>),
      ),
      duration: $checkedConvert(
        'duration',
        (v) => DurationDto.fromJson(v as Map<String, dynamic>),
      ),
      endAddress: $checkedConvert('end_address', (v) => v as String),
      endLocation: $checkedConvert(
        'end_location',
        (v) => LatLngLiteral.fromJson(v as Map<String, dynamic>),
      ),
      startAddress: $checkedConvert('start_address', (v) => v as String),
      startLocation: $checkedConvert(
        'start_location',
        (v) => LatLngLiteral.fromJson(v as Map<String, dynamic>),
      ),
      steps: $checkedConvert(
        'steps',
        (v) =>
            (v as List<dynamic>)
                .map((e) => Step.fromJson(e as Map<String, dynamic>))
                .toList(),
      ),
    );
    return val;
  },
  fieldKeyMap: const {
    'endAddress': 'end_address',
    'endLocation': 'end_location',
    'startAddress': 'start_address',
    'startLocation': 'start_location',
  },
);

Map<String, dynamic> _$LegToJson(Leg instance) => <String, dynamic>{
  'distance': instance.distance.toJson(),
  'duration': instance.duration.toJson(),
  'end_address': instance.endAddress,
  'end_location': instance.endLocation.toJson(),
  'start_address': instance.startAddress,
  'start_location': instance.startLocation.toJson(),
  'steps': instance.steps.map((e) => e.toJson()).toList(),
};
