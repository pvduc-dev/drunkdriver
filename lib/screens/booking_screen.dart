import 'dart:async';
import 'dart:math';

import 'package:drunkdriver/widgets/primary_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:maplibre_gl/maplibre_gl.dart';

class BookingScreen extends StatefulWidget {
  const BookingScreen({super.key});

  @override
  State<BookingScreen> createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {
  final Completer<MapLibreMapController> mapController = Completer();
  bool canInteractWithMap = false;

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

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MapLibreMap(
        onMapCreated: (controller) => mapController.complete(controller),
        initialCameraPosition: CameraPosition(
          target: LatLng(21.03567430379084, 105.83059373638059),
          zoom: 13,
        ),
        onStyleLoadedCallback: () => setState(() => canInteractWithMap = true),
        styleString: 'https://fluffy-kelpie-1887af.netlify.app/light.json',
        attributionButtonMargins: Point(-30, -30),
      ),
      bottomSheet: SizedBox(
        height: 142,
        width: double.infinity,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 8.0),
              Row(
                children: [
                  Expanded(
                    child: CupertinoButton(
                      padding: EdgeInsets.symmetric(horizontal: 16.0),
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
                                      MediaQuery.of(context).viewInsets.bottom,
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
                                                    CupertinoColors.activeGreen,
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
                                                    CupertinoColors.activeBlue,
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
                          Text('Tiền mặt'),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 16.0),
                  Expanded(
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: '20.000đ',
                            style: TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: PrimaryButton(text: 'Đặt tài xế', onPressed: () {}),
              ),
              SizedBox(height: 16.0),
            ],
          ),
        ),
      ),
    );
  }
}
