// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_trip_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateTripRequest _$CreateTripRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('CreateTripRequest', json, ($checkedConvert) {
  $checkKeys(
    json,
    requiredKeys: const ['customerId', 'paymentMethod', 'paymentStatus'],
  );
  final val = CreateTripRequest(
    customerId: $checkedConvert('customerId', (v) => v as num),
    driverId: $checkedConvert('driverId', (v) => v as num?),
    pickupLocation: $checkedConvert(
      'pickupLocation',
      (v) => v == null ? null : Location.fromJson(v as Map<String, dynamic>),
    ),
    dropoffLocation: $checkedConvert(
      'dropoffLocation',
      (v) => v == null ? null : Location.fromJson(v as Map<String, dynamic>),
    ),
    actualCost: $checkedConvert('actualCost', (v) => v as String?),
    paymentMethod: $checkedConvert('paymentMethod', (v) => v as String),
    paymentStatus: $checkedConvert('paymentStatus', (v) => v as String),
    status: $checkedConvert('status', (v) => v as String?),
    vehicleType: $checkedConvert('vehicleType', (v) => v as String?),
    notes: $checkedConvert('notes', (v) => v as String?),
    startTime: $checkedConvert(
      'startTime',
      (v) => v == null ? null : DateTime.parse(v as String),
    ),
    endTime: $checkedConvert(
      'endTime',
      (v) => v == null ? null : DateTime.parse(v as String),
    ),
  );
  return val;
});

Map<String, dynamic> _$CreateTripRequestToJson(
  CreateTripRequest instance,
) => <String, dynamic>{
  'customerId': instance.customerId,
  if (instance.driverId case final value?) 'driverId': value,
  if (instance.pickupLocation?.toJson() case final value?)
    'pickupLocation': value,
  if (instance.dropoffLocation?.toJson() case final value?)
    'dropoffLocation': value,
  if (instance.actualCost case final value?) 'actualCost': value,
  'paymentMethod': instance.paymentMethod,
  'paymentStatus': instance.paymentStatus,
  if (instance.status case final value?) 'status': value,
  if (instance.vehicleType case final value?) 'vehicleType': value,
  if (instance.notes case final value?) 'notes': value,
  if (instance.startTime?.toIso8601String() case final value?)
    'startTime': value,
  if (instance.endTime?.toIso8601String() case final value?) 'endTime': value,
};
