import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:geolocator/geolocator.dart';

/// Utility class để xử lý các tác vụ liên quan đến vị trí
class LocationUtils {
  /// Lấy vị trí hiện tại của thiết bị
  /// Trả về Position nếu thành công, hoặc ném lỗi nếu thất bại
  static Future<Position> getCurrentLocation() async {
    try {
      // Kiểm tra xem dịch vụ vị trí có được bật không
      bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
      if (!serviceEnabled) {
        throw LocationException('Dịch vụ vị trí bị tắt. Vui lòng bật GPS.');
      }

      // Kiểm tra và yêu cầu quyền truy cập vị trí
      LocationPermission permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
        if (permission == LocationPermission.denied) {
          throw LocationException('Quyền truy cập vị trí bị từ chối.');
        }
      }

      if (permission == LocationPermission.deniedForever) {
        throw LocationException(
          'Quyền truy cập vị trí bị từ chối vĩnh viễn. Vui lòng cấp quyền trong cài đặt.',
        );
      }

      // Lấy vị trí hiện tại với độ chính xác cao
      Position position = await Geolocator.getCurrentPosition(
        locationSettings: const LocationSettings(
          accuracy: LocationAccuracy.high,
        ),
      );

      return position;
    } catch (e) {
      // Ném lại lỗi để hàm gọi xử lý
      if (e is LocationException) {
        rethrow;
      }
      throw LocationException('Không thể lấy vị trí: ${e.toString()}');
    }
  }

  /// Kiểm tra xem quyền truy cập vị trí đã được cấp chưa
  static Future<bool> hasLocationPermission() async {
    LocationPermission permission = await Geolocator.checkPermission();
    return permission == LocationPermission.always ||
        permission == LocationPermission.whileInUse;
  }

  /// Mở cài đặt ứng dụng để người dùng cấp quyền thủ công
  static Future<void> openAppSettings() async {
    await Geolocator.openAppSettings();
  }

  /// Mở cài đặt vị trí của thiết bị để bật GPS
  static Future<void> openLocationSettings() async {
    await Geolocator.openLocationSettings();
  }

  static Future<String> getAddressFromCoordinates(
    double latitude,
    double longitude,
  ) async {
    try {
      final response = await Dio().get(
        'https://api.gongmap.vn/geocode/v2/reverse?lat=$latitude&lng=$longitude&key=kWTqo0JBQHi0WlZ0Yz6KQvzKQUmzHyauHiVRwKpD',
      );

      if (response.statusCode == 200) {
        final data = jsonDecode(response.data);
        if (data['status'] == 'OK') {
          final result = data['result'];
          return result['formatted_address'] as String;
        }
      }

      return 'Không thể lấy địa chỉ';
    } catch (e) {
      return 'Không thể lấy địa chỉ';
    }
  }
}

/// Custom exception cho các lỗi liên quan đến vị trí
class LocationException implements Exception {
  final String message;

  LocationException(this.message);

  @override
  String toString() => message;
}
