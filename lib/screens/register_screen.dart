import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:flutter/cupertino.dart';

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
      FocusScope.of(context).requestFocus(_focusNode);
    });
  }

  void _submitPhoneNumber() {
    final phoneNumber = _phoneController.text.trim();
    if (phoneNumber.isEmpty) {
      setState(() {
        _errorMessage = 'Vui lòng nhập số điện thoại!';
      });
    } else {
      setState(() {
        _errorMessage = 'Đang gửi mã OTP...';
      });
      _sendOtp(phoneNumber);
    }
  }

  void _sendOtp(String phoneNumber) {
    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        _errorMessage = 'Mã OTP đã được gửi đến $phoneNumber';
      });
      // Điều hướng tới màn hình nhập OTP
      // Navigator.pushNamed(context, '/otp');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 68),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Nhập số điện thoại của bạn",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
                SizedBox(height: 6), // Khoảng cách giữa label và input
                CupertinoTextField(
                  keyboardType: TextInputType.phone,
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Color(0xFFE2EAF1).withOpacity(0.2),
                    border: Border.all(color: Color(0xFF8FA1B7).withOpacity(0.35), width: 1),
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ],
            ),
            Expanded(child: Container()), // Đẩy button xuống dưới
            SizedBox(
              width: double.infinity, // Chiều rộng full
              child: CupertinoButton(
                color: Color(0xFFFFC41E),
                onPressed: () {
                  print("Button được nhấn!");
                },
                child: Text(
                  "Tiếp tục",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ],
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
