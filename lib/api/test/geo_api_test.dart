import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for GeoApi
void main() {
  final instance = Openapi().getGeoApi();

  group(GeoApi, () {
    //Future<DirectionResponse> geoControllerGetDistance(String origin, String destination) async
    test('test geoControllerGetDistance', () async {
      // TODO
    });

    //Future<GeocodingResult> geoControllerGetGeocode(num lat, num lng) async
    test('test geoControllerGetGeocode', () async {
      // TODO
    });

  });
}
