import 'dart:async';
import 'dart:math';

import 'package:drunkdriver/widgets/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:maplibre_gl/maplibre_gl.dart';
import 'package:flutter/cupertino.dart';

class BookingScreen extends StatefulWidget {
  const BookingScreen({super.key});

  @override
  State<BookingScreen> createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {
  final Completer<MapLibreMapController> mapController = Completer();
  bool canInteractWithMap = false;
  List<List<double>> coordinates = [
    [105.62708795610837, 20.98788610554503],
    [105.87410980252804, 21.035376606820478],
    [106.11492370069283, 20.99369079087559],
    [106.17031970357283, 20.890742429194773],
  ];

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
    _drawLine(coordinates);
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
        height: 330,
        width: double.infinity,
        child: Container(
          padding: EdgeInsets.all(16),
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
              ListTile(
                contentPadding: EdgeInsets.all(0),
                title: Text('Điểm xuất phát'),
                subtitle: Text('Toà nhà Sông Đà'),
                trailing: const Icon(Icons.arrow_forward),
              ),
              Divider(
                height: 32.0,
                thickness: 1.0,
                color: Color(0xFF8FA1B7).withAlpha(89),
              ),
              ListTile(
                contentPadding: EdgeInsets.all(0),
                title: Text('Điểm đến'),
                subtitle: Text(
                  'Số 123, đường Nguyễn Văn Cự, phường 1, quận 3, TP.HCM',
                ),
                trailing: const Icon(Icons.arrow_forward),
              ),
              SizedBox(height: 8.0),
              SizedBox(height: 8.0),
              Divider(
                height: 32.0,
                thickness: 1.0,
                color: Color(0xFF8FA1B7).withAlpha(89),
              ),
              Row(children: []),
              PrimaryButton(
                text: 'Đặt tài xế đến đón với giá: 20.000đ',
                onPressed: () {},
              ),
              SizedBox(height: 12.0),
            ],
          ),
        ),
      ),
    );
  }
}
