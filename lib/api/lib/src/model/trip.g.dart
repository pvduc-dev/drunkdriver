// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trip.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Trip _$TripFromJson(Map<String, dynamic> json) => $checkedCreate('Trip', json, (
  $checkedConvert,
) {
  $checkKeys(json, requiredKeys: const ['id']);
  final val = Trip(
    pickupLocation: $checkedConvert(
      'pickupLocation',
      (v) => v == null ? null : Location.fromJson(v as Map<String, dynamic>),
    ),
    dropoffLocation: $checkedConvert(
      'dropoffLocation',
      (v) => v == null ? null : Location.fromJson(v as Map<String, dynamic>),
    ),
    id: $checkedConvert('id', (v) => v as num),
    customerId: $checkedConvert('customerId', (v) => v as num?),
    driverId: $checkedConvert('driverId', (v) => v as num?),
    actualCost: $checkedConvert('actualCost', (v) => v as String?),
    paymentMethod: $checkedConvert('paymentMethod', (v) => v as String?),
    paymentStatus: $checkedConvert('paymentStatus', (v) => v as String?),
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
    createdAt: $checkedConvert(
      'createdAt',
      (v) => v == null ? null : DateTime.parse(v as String),
    ),
    updatedAt: $checkedConvert(
      'updatedAt',
      (v) => v == null ? null : DateTime.parse(v as String),
    ),
  );
  return val;
});

Map<String, dynamic> _$TripToJson(Trip instance) => <String, dynamic>{
  if (instance.pickupLocation?.toJson() case final value?)
    'pickupLocation': value,
  if (instance.dropoffLocation?.toJson() case final value?)
    'dropoffLocation': value,
  'id': instance.id,
  if (instance.customerId case final value?) 'customerId': value,
  if (instance.driverId case final value?) 'driverId': value,
  if (instance.actualCost case final value?) 'actualCost': value,
  if (instance.paymentMethod case final value?) 'paymentMethod': value,
  if (instance.paymentStatus case final value?) 'paymentStatus': value,
  if (instance.status case final value?) 'status': value,
  if (instance.vehicleType case final value?) 'vehicleType': value,
  if (instance.notes case final value?) 'notes': value,
  if (instance.startTime?.toIso8601String() case final value?)
    'startTime': value,
  if (instance.endTime?.toIso8601String() case final value?) 'endTime': value,
  if (instance.createdAt?.toIso8601String() case final value?)
    'createdAt': value,
  if (instance.updatedAt?.toIso8601String() case final value?)
    'updatedAt': value,
};
