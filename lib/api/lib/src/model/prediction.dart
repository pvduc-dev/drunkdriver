//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/structured_formatting.dart';
import 'package:json_annotation/json_annotation.dart';

part 'prediction.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class Prediction {
  /// Returns a new [Prediction] instance.
  Prediction({

    required  this.description,

    required  this.placeId,

    required  this.structuredFormatting,
  });

  @JsonKey(
    
    name: r'description',
    required: true,
    includeIfNull: false,
  )


  final String description;



  @JsonKey(
    
    name: r'place_id',
    required: true,
    includeIfNull: false,
  )


  final String placeId;



  @JsonKey(
    
    name: r'structured_formatting',
    required: true,
    includeIfNull: false,
  )


  final StructuredFormatting structuredFormatting;





    @override
    bool operator ==(Object other) => identical(this, other) || other is Prediction &&
      other.description == description &&
      other.placeId == placeId &&
      other.structuredFormatting == structuredFormatting;

    @override
    int get hashCode =>
        description.hashCode +
        placeId.hashCode +
        structuredFormatting.hashCode;

  factory Prediction.fromJson(Map<String, dynamic> json) => _$PredictionFromJson(json);

  Map<String, dynamic> toJson() => _$PredictionToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

