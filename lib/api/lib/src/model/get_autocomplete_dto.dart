//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/prediction.dart';
import 'package:json_annotation/json_annotation.dart';

part 'get_autocomplete_dto.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class GetAutocompleteDto {
  /// Returns a new [GetAutocompleteDto] instance.
  GetAutocompleteDto({

     this.predictions,
  });

  @JsonKey(
    
    name: r'predictions',
    required: false,
    includeIfNull: false,
  )


  final List<Prediction>? predictions;





    @override
    bool operator ==(Object other) => identical(this, other) || other is GetAutocompleteDto &&
      other.predictions == predictions;

    @override
    int get hashCode =>
        predictions.hashCode;

  factory GetAutocompleteDto.fromJson(Map<String, dynamic> json) => _$GetAutocompleteDtoFromJson(json);

  Map<String, dynamic> toJson() => _$GetAutocompleteDtoToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

