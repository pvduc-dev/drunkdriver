// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'geocode_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GeocodeResponse _$GeocodeResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'GeocodeResponse',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const [
            'formatted_address',
            'geometry',
            'place_id',
            'name',
            'address',
          ],
        );
        final val = GeocodeResponse(
          formattedAddress: $checkedConvert(
            'formatted_address',
            (v) => v as String,
          ),
          geometry: $checkedConvert(
            'geometry',
            (v) => Geometry.fromJson(v as Map<String, dynamic>),
          ),
          placeId: $checkedConvert('place_id', (v) => v as String),
          name: $checkedConvert('name', (v) => v as String),
          address: $checkedConvert('address', (v) => v as String),
        );
        return val;
      },
      fieldKeyMap: const {
        'formattedAddress': 'formatted_address',
        'placeId': 'place_id',
      },
    );

Map<String, dynamic> _$GeocodeResponseToJson(GeocodeResponse instance) =>
    <String, dynamic>{
      'formatted_address': instance.formattedAddress,
      'geometry': instance.geometry.toJson(),
      'place_id': instance.placeId,
      'name': instance.name,
      'address': instance.address,
    };
