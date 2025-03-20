import 'http_client.dart';

class AuthService {
  sendOtp(String phone) async {
    final response = await HttpClient().post(
      '/auth/send-otp',
      data: {'phone': phone},
    );
    return response.data;
  }

  verifyOtp(String phone, String code, String verificationId) async {
    final response = await HttpClient().post(
      '/auth/verify-otp',
      data: {'phone': phone, 'code': code, 'verificationId': verificationId},
    );
    return response.data;
  }
}
