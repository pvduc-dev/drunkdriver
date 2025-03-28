//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'plus_code.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PlusCode {
  /// Returns a new [PlusCode] instance.
  PlusCode({

    required  this.compoundCode,

    required  this.globalCode,
  });

  @JsonKey(
    
    name: r'compound_code',
    required: true,
    includeIfNull: false,
  )


  final String compoundCode;



  @JsonKey(
    
    name: r'global_code',
    required: true,
    includeIfNull: false,
  )


  final String globalCode;





    @override
    bool operator ==(Object other) => identical(this, other) || other is PlusCode &&
      other.compoundCode == compoundCode &&
      other.globalCode == globalCode;

    @override
    int get hashCode =>
        compoundCode.hashCode +
        globalCode.hashCode;

  factory PlusCode.fromJson(Map<String, dynamic> json) => _$PlusCodeFromJson(json);

  Map<String, dynamic> toJson() => _$PlusCodeToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

