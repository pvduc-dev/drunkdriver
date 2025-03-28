import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for AuthApi
void main() {
  final instance = Openapi().getAuthApi();

  group(AuthApi, () {
    //Future<VerifyOtpResponse> authControllerCreateProfile(CreateProfileRequest createProfileRequest) async
    test('test authControllerCreateProfile', () async {
      // TODO
    });

    // Gửi OTP đến số điện thoại
    //
    //Future<SendOtpResponse> authControllerSendOtp(SendOtpRequest sendOtpRequest) async
    test('test authControllerSendOtp', () async {
      // TODO
    });

    // Xác thực OTP
    //
    //Future<VerifyOtpResponse> authControllerVerifyOtp(VerifyOtpRequest verifyOtpRequest) async
    test('test authControllerVerifyOtp', () async {
      // TODO
    });

  });
}
