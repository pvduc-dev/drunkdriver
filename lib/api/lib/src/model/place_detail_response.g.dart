// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_detail_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlaceDetailResponse _$PlaceDetailResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate('PlaceDetailResponse', json, ($checkedConvert) {
      $checkKeys(json, requiredKeys: const ['result', 'status']);
      final val = PlaceDetailResponse(
        result: $checkedConvert(
          'result',
          (v) => PlaceDetail.fromJson(v as Map<String, dynamic>),
        ),
        status: $checkedConvert('status', (v) => v as String),
      );
      return val;
    });

Map<String, dynamic> _$PlaceDetailResponseToJson(
  PlaceDetailResponse instance,
) => <String, dynamic>{
  'result': instance.result.toJson(),
  'status': instance.status,
};
