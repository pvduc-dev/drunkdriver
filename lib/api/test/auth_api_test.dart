import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for AuthApi
void main() {
  final instance = Openapi().getAuthApi();

  group(AuthApi, () {
    // Gửi OTP đến số điện thoại
    //
    //Future<SendOtpResponse> authControllerSendOtp(SendOtpRequest sendOtpRequest) async
    test('test authControllerSendOtp', () async {
      // TODO
    });

    //Future<VerifyOtpResponse> authControllerVerifyOtp(VerifyOtpRequest verifyOtpRequest) async
    test('test authControllerVerifyOtp', () async {
      // TODO
    });

  });
}
