// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prediction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Prediction _$PredictionFromJson(Map<String, dynamic> json) => $checkedCreate(
  'Prediction',
  json,
  ($checkedConvert) {
    $checkKeys(
      json,
      requiredKeys: const ['description', 'place_id', 'structured_formatting'],
    );
    final val = Prediction(
      description: $checkedConvert('description', (v) => v as String),
      placeId: $checkedConvert('place_id', (v) => v as String),
      structuredFormatting: $checkedConvert(
        'structured_formatting',
        (v) => StructuredFormatting.fromJson(v as Map<String, dynamic>),
      ),
    );
    return val;
  },
  fieldKeyMap: const {
    'placeId': 'place_id',
    'structuredFormatting': 'structured_formatting',
  },
);

Map<String, dynamic> _$PredictionToJson(Prediction instance) =>
    <String, dynamic>{
      'description': instance.description,
      'place_id': instance.placeId,
      'structured_formatting': instance.structuredFormatting.toJson(),
    };
