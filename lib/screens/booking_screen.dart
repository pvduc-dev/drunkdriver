import 'dart:async';
import 'dart:math';

import 'package:drunkdriver/api/lib/openapi.dart';
import 'package:drunkdriver/providers/api_provider.dart';
import 'package:drunkdriver/widgets/primary_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:maplibre_gl/maplibre_gl.dart';
import 'package:provider/provider.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;

class BookingScreen extends StatefulWidget {
  const BookingScreen({super.key});

  @override
  State<BookingScreen> createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {
  final Completer<MapLibreMapController> mapController = Completer();
  bool canInteractWithMap = false;
  Leg? _leg;
  late IO.Socket _socket;

  void _drawLine(List<List<double>> coordinates) async {
    final controller = await mapController.future;
    controller.removeLayer("line_layer");
    controller.removeSource("line_source");

    final geoJsonData = {
      "type": "FeatureCollection",
      "features": [
        {
          "type": "Feature",
          "geometry": {"type": "LineString", "coordinates": coordinates},
        },
      ],
    };

    controller.addSource(
      "line_source",
      GeojsonSourceProperties(data: geoJsonData),
    );
    controller.addLineLayer(
      "line_source",
      "line_layer",
      LineLayerProperties(
        lineColor: "#253494",
        lineWidth: 10,
        lineCap: "round",
        lineJoin: "round",
      ),
    );
  }

  get actualCost =>
      (((_leg?.distance.value.toDouble() ?? 0) * 10).round() / 1000).round() *
      1000;

  _zoomToBounds(List<List<double>> coordinates) async {
    final controller = await mapController.future;
    controller.animateCamera(
      CameraUpdate.newLatLngBounds(
        LatLngBounds(
          southwest: LatLng(coordinates.first.last, coordinates.first.first),
          northeast: LatLng(coordinates.last.last, coordinates.last.first),
        ),
        left: 70,
        top: 70,
        right: 70,
        bottom: 70,
      ),
    );
  }

  void initSocket() {
    _socket = IO.io(
      'http://192.168.31.98:3000',
      IO.OptionBuilder().setTransports(['websocket']).disableAutoConnect().setAuth({
        'token':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwicGhvbmUiOiIrODQ4NjU3MDc5MDYiLCJlbWFpbCI6bnVsbCwicm9sZSI6W10sImlhdCI6MTc0MzQ5OTIwNTA5MSwiZXhwIjoxNzQzNTMwNzYyNjkxfQ.i7zVZ6wKxzYHvzrDt7LtbNXU1zuj0llh9vZ8O8S1MBY',
      }).build(),
    );

    _socket.connect();

    _socket.onConnect((_) {
      print('Connected to WebSocket');
    });

    _socket.on('driverFound', (data) {
      Navigator.pop(context);

      // Navigator.pushNamed(context, '/driver-found', arguments: data);
    });

    _socket.on('noDriverFound', (data) {
      Navigator.pop(context);
      showCupertinoDialog(
        context: context,
        builder:
            (context) => CupertinoAlertDialog(
              title: Text('Thông báo'),
              content: Text(
                'Không tìm thấy tài xế trong khu vực của bạn. Vui lòng thử lại',
              ),
              actions: [
                CupertinoDialogAction(
                  child: Text('Đóng'),
                  onPressed: () => Navigator.pop(context),
                ),
              ],
            ),
      );
    });

    _socket.on('driverDeclined', (data) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text(data['message'])));
    });
  }

  Future<void> confirmBooking() async {
    showCupertinoDialog(
      context: context,
      barrierDismissible: false,
      builder:
          (context) => CupertinoAlertDialog(
            title: Text('Đang tìm kiếm tài xế cho bạn'),
            content: Container(
              margin: EdgeInsets.only(top: 16),
              child: CupertinoActivityIndicator(),
            ),
          ),
    );
    final trip = await context
        .read<ApiProvider>()
        .api
        .getTripsApi()
        .tripsControllerCreate(
          createTripRequest: CreateTripRequest(
            customerId: 1,
            paymentMethod: 'cash',
            paymentStatus: 'pending',
            pickupLocation: Location(
              latitude: _leg?.startLocation.lat ?? 0,
              longitude: _leg?.startLocation.lng ?? 0,
              addressLine: _leg?.startAddress ?? '',
            ),
            dropoffLocation: Location(
              latitude: _leg?.endLocation.lat ?? 0,
              longitude: _leg?.endLocation.lng ?? 0,
              addressLine: _leg?.endAddress ?? '',
            ),
            actualCost: actualCost.toString(),
          ),
          extra: {'context': context, 'isLoading': true},
        );

    _socket.emit('findDriver', {'tripId': trip.data?.id});
  }

  @override
  void initState() {
    super.initState();
    initSocket();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _leg = ModalRoute.of(context)?.settings.arguments as Leg?;
    if (_leg != null) {
      final coordinates =
          _leg!.steps
              .map(
                (step) => [
                  step.startLocation.lng.toDouble(),
                  step.startLocation.lat.toDouble(),
                ],
              )
              .toList();
      _drawLine(coordinates);
      _zoomToBounds(coordinates);
    }
  }

  @override
  void dispose() {
    _socket.disconnect();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          MapLibreMap(
            onMapCreated: (controller) => mapController.complete(controller),
            initialCameraPosition: CameraPosition(
              target: LatLng(21.03567430379084, 105.83059373638059),
              zoom: 12,
            ),
            onStyleLoadedCallback:
                () => setState(() => canInteractWithMap = true),
            styleString: 'https://fluffy-kelpie-1887af.netlify.app/light.json',
            attributionButtonMargins: Point(-30, -30),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withAlpha(30),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          CupertinoButton(
                            padding: EdgeInsets.symmetric(
                              horizontal: 16.0,
                              vertical: 12.0,
                            ),
                            onPressed: () {},
                            child: Row(
                              children: [
                                Container(
                                  width: 12,
                                  height: 12,
                                  decoration: BoxDecoration(
                                    color: Colors.blue,
                                    shape: BoxShape.circle,
                                  ),
                                ),
                                SizedBox(width: 16),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Điểm đón',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.grey,
                                        ),
                                      ),
                                      Text(
                                        _leg?.startAddress ?? '',
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16.0,
                            ),
                            child: Divider(height: 1),
                          ),
                          CupertinoButton(
                            padding: EdgeInsets.symmetric(
                              horizontal: 16.0,
                              vertical: 12.0,
                            ),
                            onPressed: () {},
                            child: Row(
                              children: [
                                Container(
                                  width: 12,
                                  height: 12,
                                  decoration: BoxDecoration(
                                    color: Colors.red,
                                    shape: BoxShape.circle,
                                  ),
                                ),
                                SizedBox(width: 16),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Điểm đến',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.grey,
                                        ),
                                      ),
                                      Text(
                                        _leg?.endAddress ?? '',
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      bottomSheet: SizedBox(
        height: 148,
        width: double.infinity,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withAlpha(50),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 8.0),
                Row(
                  children: [
                    Expanded(
                      child: CupertinoButton(
                        onPressed: () {
                          showCupertinoModalPopup(
                            barrierDismissible: false,
                            context: context,
                            builder:
                                (BuildContext context) => Container(
                                  height: 180,
                                  padding: const EdgeInsets.only(top: 6.0),
                                  margin: EdgeInsets.only(
                                    bottom:
                                        MediaQuery.of(
                                          context,
                                        ).viewInsets.bottom,
                                  ),
                                  color: CupertinoColors.systemBackground
                                      .resolveFrom(context),
                                  child: Column(
                                    children: [
                                      Expanded(
                                        child: CupertinoPicker(
                                          magnification: 1.22,
                                          squeeze: 1.2,
                                          useMagnifier: true,
                                          itemExtent: 32.0,
                                          scrollController:
                                              FixedExtentScrollController(
                                                initialItem: 0,
                                              ),
                                          onSelectedItemChanged:
                                              (int selectedItem) {},
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Icon(
                                                  CupertinoIcons.money_dollar,
                                                  color:
                                                      CupertinoColors
                                                          .activeGreen,
                                                ),
                                                SizedBox(width: 8.0),
                                                Text('Tiền mặt'),
                                              ],
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Icon(
                                                  CupertinoIcons.creditcard,
                                                  color:
                                                      CupertinoColors
                                                          .activeBlue,
                                                ),
                                                SizedBox(width: 8.0),
                                                Text('Ví điện tử'),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      CupertinoButton(
                                        child: Text(
                                          'Xác nhận',
                                          style: TextStyle(
                                            color: CupertinoColors.activeBlue,
                                          ),
                                        ),
                                        onPressed: () => Navigator.pop(context),
                                      ),
                                      SizedBox(height: 16.0),
                                    ],
                                  ),
                                ),
                          );
                        },
                        child: Row(
                          children: [
                            Icon(
                              CupertinoIcons.money_dollar,
                              color: CupertinoColors.activeGreen,
                            ),
                            SizedBox(width: 8.0),
                            Text(
                              'Tiền mặt',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 16.0),
                    Expanded(
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          NumberFormat.currency(
                            locale: 'vi',
                            symbol: '₫',
                            decimalDigits: 0,
                          ).format(actualCost),
                          style: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 8.0),
                  ],
                ),
                SizedBox(height: 8.0),
                PrimaryButton(
                  text: 'Đặt tài xế',
                  onPressed: () {
                    confirmBooking();
                  },
                ),
                SizedBox(height: 24.0),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
