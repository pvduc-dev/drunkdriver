//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'compound.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class Compound {
  /// Returns a new [Compound] instance.
  Compound({

    required  this.district,

    required  this.commune,

    required  this.province,
  });

  @JsonKey(
    
    name: r'district',
    required: true,
    includeIfNull: false,
  )


  final String district;



  @JsonKey(
    
    name: r'commune',
    required: true,
    includeIfNull: false,
  )


  final String commune;



  @JsonKey(
    
    name: r'province',
    required: true,
    includeIfNull: false,
  )


  final String province;





    @override
    bool operator ==(Object other) => identical(this, other) || other is Compound &&
      other.district == district &&
      other.commune == commune &&
      other.province == province;

    @override
    int get hashCode =>
        district.hashCode +
        commune.hashCode +
        province.hashCode;

  factory Compound.fromJson(Map<String, dynamic> json) => _$CompoundFromJson(json);

  Map<String, dynamic> toJson() => _$CompoundToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

