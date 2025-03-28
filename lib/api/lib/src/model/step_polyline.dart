//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'step_polyline.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class StepPolyline {
  /// Returns a new [StepPolyline] instance.
  StepPolyline({

     this.points,
  });

  @JsonKey(
    
    name: r'points',
    required: false,
    includeIfNull: false,
  )


  final String? points;





    @override
    bool operator ==(Object other) => identical(this, other) || other is StepPolyline &&
      other.points == points;

    @override
    int get hashCode =>
        points.hashCode;

  factory StepPolyline.fromJson(Map<String, dynamic> json) => _$StepPolylineFromJson(json);

  Map<String, dynamic> toJson() => _$StepPolylineToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

