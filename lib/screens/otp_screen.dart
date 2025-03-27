import 'package:drunkdriver/api/lib/openapi.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:provider/provider.dart';
import 'package:drunkdriver/providers/api_provider.dart';

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

  Future<void> _verifyOtp(String pin) async {
    final api = context.read<ApiProvider>().api;
    try {
      final response = await api.getAuthApi().authControllerVerifyOtp(
        verifyOtpRequest: VerifyOtpRequest(
          code: pin,
          phone: _phone as String,
          verificationId: _verificationId as String,
        ),
        extra: { 'context': context, 'isLoading': true },
      );
      if (!mounted) return;
      Navigator.pushNamed(
        context,
        '/profile-creation',
        arguments: response.data?.data,
      );
      _pinController.clear();
    } catch (e) {
      _pinController.clear();
    }
  }

  // Future<void> _resendOtp() async {
  //   try {
  //     final response = await _api.getAuthApi().authControllerSendOtp(
  //       sendOtpRequest: SendOtpRequest(phone: _phone as String),
  //     );
  //     if (!mounted) return;
  //     _expiresAt = response.data?.data.otp.expiresAt;
  //     _verificationId = response.data?.data.otp.verificationId;
  //   } catch (e) {
  //     print(e);
  //   }
  // }

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    SendOtpData? sendOtpData =
        (ModalRoute.of(context)?.settings.arguments as SendOtpData?);
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
      canPop: true,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Xác nhận mã xác thực',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
          centerTitle: true,
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Nhập mã xác thực",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 16.0),
                    Pinput(
                      controller: _pinController,
                      length: 6,
                      onCompleted: (pin) {
                        if (pin.length == 6) {
                          _verifyOtp(pin);
                        }
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
                    // TextButton(
                    //   onPressed: () {
                    //     _resendOtp();
                    //   },
                    //   child: Text(
                    //     "Gửi lại mã xác thực",
                    //     style: TextStyle(
                    //       color: Colors.blue,
                    //       fontSize: 16,
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
