//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'structured_formatting.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class StructuredFormatting {
  /// Returns a new [StructuredFormatting] instance.
  StructuredFormatting({

    required  this.mainText,

    required  this.secondaryText,
  });

  @JsonKey(
    
    name: r'main_text',
    required: true,
    includeIfNull: false,
  )


  final String mainText;



  @JsonKey(
    
    name: r'secondary_text',
    required: true,
    includeIfNull: false,
  )


  final String secondaryText;





    @override
    bool operator ==(Object other) => identical(this, other) || other is StructuredFormatting &&
      other.mainText == mainText &&
      other.secondaryText == secondaryText;

    @override
    int get hashCode =>
        mainText.hashCode +
        secondaryText.hashCode;

  factory StructuredFormatting.fromJson(Map<String, dynamic> json) => _$StructuredFormattingFromJson(json);

  Map<String, dynamic> toJson() => _$StructuredFormattingToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

