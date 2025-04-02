// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_autocomplete_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetAutocompleteDto _$GetAutocompleteDtoFromJson(Map<String, dynamic> json) =>
    $checkedCreate('GetAutocompleteDto', json, ($checkedConvert) {
      final val = GetAutocompleteDto(
        predictions: $checkedConvert(
          'predictions',
          (v) =>
              (v as List<dynamic>?)
                  ?.map((e) => Prediction.fromJson(e as Map<String, dynamic>))
                  .toList(),
        ),
      );
      return val;
    });

Map<String, dynamic> _$GetAutocompleteDtoToJson(
  GetAutocompleteDto instance,
) => <String, dynamic>{
  if (instance.predictions?.map((e) => e.toJson()).toList() case final value?)
    'predictions': value,
};
