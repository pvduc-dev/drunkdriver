//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'address_component.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class AddressComponent {
  /// Returns a new [AddressComponent] instance.
  AddressComponent({

    required  this.longName,

    required  this.shortName,
  });

  @JsonKey(
    
    name: r'long_name',
    required: true,
    includeIfNull: false,
  )


  final String longName;



  @JsonKey(
    
    name: r'short_name',
    required: true,
    includeIfNull: false,
  )


  final String shortName;





    @override
    bool operator ==(Object other) => identical(this, other) || other is AddressComponent &&
      other.longName == longName &&
      other.shortName == shortName;

    @override
    int get hashCode =>
        longName.hashCode +
        shortName.hashCode;

  factory AddressComponent.fromJson(Map<String, dynamic> json) => _$AddressComponentFromJson(json);

  Map<String, dynamic> toJson() => _$AddressComponentToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

