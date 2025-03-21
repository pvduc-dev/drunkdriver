import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../services/auth_service.dart';
import '../widgets/primary_button.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  RegisterScreenState createState() => RegisterScreenState();
}

class RegisterScreenState extends State<RegisterScreen> {
  final FocusNode _focusNode = FocusNode();
  final _phoneController = TextEditingController();
  String _errorMessage = '';

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(milliseconds: 300), () {
      if (!mounted) return;
      FocusScope.of(context).requestFocus(_focusNode);
    });
  }

  void _submitPhoneNumber() {
    final phoneNumber = _phoneController.text.trim();
    if (phoneNumber.isEmpty) {
      setState(() {
        _errorMessage = 'Vui lòng nhập số điện thoại';
      });
    } else {
      setState(() {
        _errorMessage = 'Đang gửi mã OTP...';
      });
      _sendOtp(phoneNumber);
    }
  }

  void _sendOtp(String phoneNumber) async {
    showCupertinoDialog(
      context: context,
      barrierDismissible: false,
      builder:
          (context) => Center(child: CupertinoActivityIndicator(radius: 15)),
    );

    try {
      final response = await AuthService().sendOtp(phoneNumber);
      if (!mounted) return;
      Navigator.pop(context); // Đóng dialog loading
      Navigator.pushNamed(context, '/', arguments: phoneNumber);
    } catch (e) {
      if (!mounted) return;
      Navigator.pop(context); // Đóng dialog loading
      setState(() {
        _errorMessage = 'Có lỗi xảy ra, vui lòng thử lại';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 68.0),
                    child: Text(
                      "Nhập số điện thoại của bạn",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: CupertinoTextField(
                      controller: _phoneController,
                      focusNode: _focusNode,
                      keyboardType: TextInputType.phone,
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Color(0xFFE2EAF1).withAlpha(51),
                        border: Border.all(
                          color: Color(0xFF8FA1B7).withAlpha(89),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  if (_errorMessage.isNotEmpty)
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(
                        _errorMessage,
                        style: TextStyle(color: Colors.red, fontSize: 12),
                      ),
                    ),
                ],
              ),
              Expanded(child: Container()),
              Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: PrimaryButton(
                  text: "Tiếp tục",
                  onPressed: _submitPhoneNumber,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _phoneController.dispose();
    super.dispose();
  }
}
