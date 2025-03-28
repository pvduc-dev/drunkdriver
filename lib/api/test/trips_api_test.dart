import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for TripsApi
void main() {
  final instance = Openapi().getTripsApi();

  group(TripsApi, () {
    //Future<Trip> tripsControllerCreate(CreateTripRequest createTripRequest) async
    test('test tripsControllerCreate', () async {
      // TODO
    });

    //Future<List<Trip>> tripsControllerFindAll() async
    test('test tripsControllerFindAll', () async {
      // TODO
    });

    //Future<String> tripsControllerFindOne(String id) async
    test('test tripsControllerFindOne', () async {
      // TODO
    });

    //Future<String> tripsControllerRemove(String id) async
    test('test tripsControllerRemove', () async {
      // TODO
    });

    //Future tripsControllerSse() async
    test('test tripsControllerSse', () async {
      // TODO
    });

    //Future<String> tripsControllerUpdate(String id, Object body) async
    test('test tripsControllerUpdate', () async {
      // TODO
    });

  });
}
