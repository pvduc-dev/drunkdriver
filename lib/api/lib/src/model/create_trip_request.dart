//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/location.dart';
import 'package:json_annotation/json_annotation.dart';

part 'create_trip_request.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class CreateTripRequest {
  /// Returns a new [CreateTripRequest] instance.
  CreateTripRequest({

    required  this.customerId,

     this.driverId,

     this.pickupLocation,

     this.dropoffLocation,

     this.actualCost,

    required  this.paymentMethod,

    required  this.paymentStatus,

     this.status,

     this.vehicleType,

     this.notes,

     this.startTime,

     this.endTime,
  });

  @JsonKey(
    
    name: r'customerId',
    required: true,
    includeIfNull: false,
  )


  final num customerId;



  @JsonKey(
    
    name: r'driverId',
    required: false,
    includeIfNull: false,
  )


  final num? driverId;



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
    
    name: r'actualCost',
    required: false,
    includeIfNull: false,
  )


  final String? actualCost;



  @JsonKey(
    
    name: r'paymentMethod',
    required: true,
    includeIfNull: false,
  )


  final String paymentMethod;



  @JsonKey(
    
    name: r'paymentStatus',
    required: true,
    includeIfNull: false,
  )


  final String paymentStatus;



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





    @override
    bool operator ==(Object other) => identical(this, other) || other is CreateTripRequest &&
      other.customerId == customerId &&
      other.driverId == driverId &&
      other.pickupLocation == pickupLocation &&
      other.dropoffLocation == dropoffLocation &&
      other.actualCost == actualCost &&
      other.paymentMethod == paymentMethod &&
      other.paymentStatus == paymentStatus &&
      other.status == status &&
      other.vehicleType == vehicleType &&
      other.notes == notes &&
      other.startTime == startTime &&
      other.endTime == endTime;

    @override
    int get hashCode =>
        customerId.hashCode +
        driverId.hashCode +
        pickupLocation.hashCode +
        dropoffLocation.hashCode +
        actualCost.hashCode +
        paymentMethod.hashCode +
        paymentStatus.hashCode +
        status.hashCode +
        vehicleType.hashCode +
        notes.hashCode +
        startTime.hashCode +
        endTime.hashCode;

  factory CreateTripRequest.fromJson(Map<String, dynamic> json) => _$CreateTripRequestFromJson(json);

  Map<String, dynamic> toJson() => _$CreateTripRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

