//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/location.dart';
import 'package:json_annotation/json_annotation.dart';

part 'trip.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class Trip {
  /// Returns a new [Trip] instance.
  Trip({

     this.pickupLocation,

     this.dropoffLocation,

    required  this.id,

     this.customerId,

     this.driverId,

     this.actualCost,

     this.paymentMethod,

     this.paymentStatus,

     this.status,

     this.vehicleType,

     this.notes,

     this.startTime,

     this.endTime,

     this.createdAt,

     this.updatedAt,
  });

  @JsonKey(
    
    name: r'pickupLocation',
    required: false,
    includeIfNull: false,
  )


  final Location? pickupLocation;



  @JsonKey(
    
    name: r'dropoffLocation',
    required: false,
    includeIfNull: false,
  )


  final Location? dropoffLocation;



  @JsonKey(
    
    name: r'id',
    required: true,
    includeIfNull: false,
  )


  final num id;



  @JsonKey(
    
    name: r'customerId',
    required: false,
    includeIfNull: false,
  )


  final num? customerId;



  @JsonKey(
    
    name: r'driverId',
    required: false,
    includeIfNull: false,
  )


  final num? driverId;



  @JsonKey(
    
    name: r'actualCost',
    required: false,
    includeIfNull: false,
  )


  final String? actualCost;



  @JsonKey(
    
    name: r'paymentMethod',
    required: false,
    includeIfNull: false,
  )


  final String? paymentMethod;



  @JsonKey(
    
    name: r'paymentStatus',
    required: false,
    includeIfNull: false,
  )


  final String? paymentStatus;



  @JsonKey(
    
    name: r'status',
    required: false,
    includeIfNull: false,
  )


  final String? status;



  @JsonKey(
    
    name: r'vehicleType',
    required: false,
    includeIfNull: false,
  )


  final String? vehicleType;



  @JsonKey(
    
    name: r'notes',
    required: false,
    includeIfNull: false,
  )


  final String? notes;



  @JsonKey(
    
    name: r'startTime',
    required: false,
    includeIfNull: false,
  )


  final DateTime? startTime;



  @JsonKey(
    
    name: r'endTime',
    required: false,
    includeIfNull: false,
  )


  final DateTime? endTime;



  @JsonKey(
    
    name: r'createdAt',
    required: false,
    includeIfNull: false,
  )


  final DateTime? createdAt;



  @JsonKey(
    
    name: r'updatedAt',
    required: false,
    includeIfNull: false,
  )


  final DateTime? updatedAt;





    @override
    bool operator ==(Object other) => identical(this, other) || other is Trip &&
      other.pickupLocation == pickupLocation &&
      other.dropoffLocation == dropoffLocation &&
      other.id == id &&
      other.customerId == customerId &&
      other.driverId == driverId &&
      other.actualCost == actualCost &&
      other.paymentMethod == paymentMethod &&
      other.paymentStatus == paymentStatus &&
      other.status == status &&
      other.vehicleType == vehicleType &&
      other.notes == notes &&
      other.startTime == startTime &&
      other.endTime == endTime &&
      other.createdAt == createdAt &&
      other.updatedAt == updatedAt;

    @override
    int get hashCode =>
        pickupLocation.hashCode +
        dropoffLocation.hashCode +
        id.hashCode +
        customerId.hashCode +
        driverId.hashCode +
        actualCost.hashCode +
        paymentMethod.hashCode +
        paymentStatus.hashCode +
        status.hashCode +
        vehicleType.hashCode +
        notes.hashCode +
        startTime.hashCode +
        endTime.hashCode +
        createdAt.hashCode +
        updatedAt.hashCode;

  factory Trip.fromJson(Map<String, dynamic> json) => _$TripFromJson(json);

  Map<String, dynamic> toJson() => _$TripToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

