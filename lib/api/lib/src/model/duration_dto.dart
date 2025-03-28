//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'duration_dto.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class DurationDto {
  /// Returns a new [DurationDto] instance.
  DurationDto({

    required  this.text,

    required  this.value,
  });

  @JsonKey(
    
    name: r'text',
    required: true,
    includeIfNull: false,
  )


  final String text;



  @JsonKey(
    
    name: r'value',
    required: true,
    includeIfNull: false,
  )


  final num value;





    @override
    bool operator ==(Object other) => identical(this, other) || other is DurationDto &&
      other.text == text &&
      other.value == value;

    @override
    int get hashCode =>
        text.hashCode +
        value.hashCode;

  factory DurationDto.fromJson(Map<String, dynamic> json) => _$DurationDtoFromJson(json);

  Map<String, dynamic> toJson() => _$DurationDtoToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

