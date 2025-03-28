// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'step_polyline.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StepPolyline _$StepPolylineFromJson(Map<String, dynamic> json) =>
    $checkedCreate('StepPolyline', json, ($checkedConvert) {
      final val = StepPolyline(
        points: $checkedConvert('points', (v) => v as String?),
      );
      return val;
    });

Map<String, dynamic> _$StepPolylineToJson(StepPolyline instance) =>
    <String, dynamic>{if (instance.points case final value?) 'points': value};
