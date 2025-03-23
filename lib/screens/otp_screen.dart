import 'package:dio/dio.dart' show BaseOptions, Dio, DioException, DioExceptionType;
import 'package:drunkdriver/api/lib/openapi.dart';
import 'package:drunkdriver/utils/dialog_utils.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

import '../widgets/primary_button.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  final _pinController = TextEditingController();
  DateTime? _expiresAt;
  String? _verificationId;
  String? _phone;

  final api = Openapi(
    dio: Dio(BaseOptions(baseUrl: 'http://192.168.31.98:3000')),
  );

  Future<void> _verifyOtp(String pin) async {
    try {
      DialogUtils.showLoadingDialog(context);
      final response = await api.getAuthApi().authControllerVerifyOtp(
        verifyOtpRequest: VerifyOtpRequest(
          code: pin,
          phone: _phone as String,
          verificationId: _verificationId as String,
        ),
      );
      if (!mounted) return;
      Navigator.pop(context);
      Navigator.pushNamed(context, '/profile-creation',
          arguments: response.data?.data);
    } on DioException catch (e) {
      if (!mounted) return;
      Navigator.pop(context);
      switch (e.type) {
        case DioExceptionType.badResponse:
          final message = e.response?.data?['message'];
          await DialogUtils.showErrorDialog(context, message: message);
          _pinController.clear();
          break;
        default:
          await DialogUtils.showErrorDialog(context, message: 'Đã có lỗi xảy ra, vui lòng thử lại');
          _pinController.clear();
      }
    }
  }

  Future<void> _resendOtp() async {
    try {
      final response = await api.getAuthApi().authControllerSendOtp(
        sendOtpRequest: SendOtpRequest(
          phone: _phone as String,
        ),
      );
      if (!mounted) return;
      _expiresAt = response.data?.data.otp.expiresAt;
      _verificationId = response.data?.data.otp.verificationId;
    } catch (e) {
      print(e);
    }
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    SendOtpData? sendOtpData = (ModalRoute.of(context)?.settings.arguments as SendOtpData?);
    _expiresAt = sendOtpData?.otp.expiresAt;
    _verificationId = sendOtpData?.otp.verificationId;
    _phone = sendOtpData?.otp.phone;
  }

  @override
  void dispose() {
    _pinController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              SizedBox(height: 72.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Nhập mã xác thực",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: 16.0),
                  Pinput(
                    controller: _pinController,
                    length: 6,
                    onCompleted: (pin) {
                      print(pin);
                      _verifyOtp(pin);
                    },
                  ),
                ],
              ),
              Expanded(child: Container()),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  StreamBuilder<int>(
                    stream: Stream.periodic(const Duration(seconds: 1), (i) {
                      if (_expiresAt == null) return 0;

                      final remaining =
                          _expiresAt?.difference(DateTime.now()).inSeconds;
                      return remaining! > 0 ? remaining : 0;
                    }),
                    builder: (context, snapshot) {
                      final seconds = snapshot.data ?? 0;

                      if (seconds == 0) {
                        return const Text(
                          'Mã OTP đã hết hiệu lực.',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF383E45),
                          ),
                        );
                      }

                      final minutes = seconds ~/ 60;
                      final remainingSeconds = seconds % 60;

                      final formattedMinutes = minutes.toString().padLeft(
                        2,
                        '0',
                      );
                      final formattedSeconds = remainingSeconds
                          .toString()
                          .padLeft(2, '0');

                      return Text(
                        'Mã OTP còn hiệu lực trong: $formattedMinutes:$formattedSeconds',
                        style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF383E45),
                        ),
                      );
                    },
                  ),
                  TextButton(
                    onPressed: () {
                      _resendOtp(); 
                    },
                    child: Text(
                      "Gửi lại mã xác thực",
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16.0),
            ],
          ),
        ),
      ),
    );
  }
}
