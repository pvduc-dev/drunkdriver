// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'geocoding_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GeocodingResult _$GeocodingResultFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'GeocodingResult',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const [
            'address_components',
            'formatted_address',
            'geometry',
            'place_id',
            'reference',
            'plus_code',
            'compound',
            'types',
            'name',
            'address',
          ],
        );
        final val = GeocodingResult(
          addressComponents: $checkedConvert(
            'address_components',
            (v) =>
                (v as List<dynamic>)
                    .map(
                      (e) =>
                          AddressComponent.fromJson(e as Map<String, dynamic>),
                    )
                    .toList(),
          ),
          formattedAddress: $checkedConvert(
            'formatted_address',
            (v) => v as String,
          ),
          geometry: $checkedConvert(
            'geometry',
            (v) => Geometry.fromJson(v as Map<String, dynamic>),
          ),
          placeId: $checkedConvert('place_id', (v) => v as String),
          reference: $checkedConvert('reference', (v) => v as String),
          plusCode: $checkedConvert(
            'plus_code',
            (v) => PlusCode.fromJson(v as Map<String, dynamic>),
          ),
          compound: $checkedConvert(
            'compound',
            (v) => Compound.fromJson(v as Map<String, dynamic>),
          ),
          types: $checkedConvert(
            'types',
            (v) => (v as List<dynamic>).map((e) => e as String).toList(),
          ),
          name: $checkedConvert('name', (v) => v as String),
          address: $checkedConvert('address', (v) => v as String),
        );
        return val;
      },
      fieldKeyMap: const {
        'addressComponents': 'address_components',
        'formattedAddress': 'formatted_address',
        'placeId': 'place_id',
        'plusCode': 'plus_code',
      },
    );

Map<String, dynamic> _$GeocodingResultToJson(GeocodingResult instance) =>
    <String, dynamic>{
      'address_components':
          instance.addressComponents.map((e) => e.toJson()).toList(),
      'formatted_address': instance.formattedAddress,
      'geometry': instance.geometry.toJson(),
      'place_id': instance.placeId,
      'reference': instance.reference,
      'plus_code': instance.plusCode.toJson(),
      'compound': instance.compound.toJson(),
      'types': instance.types,
      'name': instance.name,
      'address': instance.address,
    };
