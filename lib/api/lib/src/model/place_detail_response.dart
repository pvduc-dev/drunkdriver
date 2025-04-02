//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/place_detail.dart';
import 'package:json_annotation/json_annotation.dart';

part 'place_detail_response.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PlaceDetailResponse {
  /// Returns a new [PlaceDetailResponse] instance.
  PlaceDetailResponse({

    required  this.result,

    required  this.status,
  });

  @JsonKey(
    
    name: r'result',
    required: true,
    includeIfNull: false,
  )


  final PlaceDetail result;



  @JsonKey(
    
    name: r'status',
    required: true,
    includeIfNull: false,
  )


  final String status;





    @override
    bool operator ==(Object other) => identical(this, other) || other is PlaceDetailResponse &&
      other.result == result &&
      other.status == status;

    @override
    int get hashCode =>
        result.hashCode +
        status.hashCode;

  factory PlaceDetailResponse.fromJson(Map<String, dynamic> json) => _$PlaceDetailResponseFromJson(json);

  Map<String, dynamic> toJson() => _$PlaceDetailResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

