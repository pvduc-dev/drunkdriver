import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../widgets/primary_button.dart';
import 'package:openapi/openapi.dart';
import '../services/api_service.dart';
import '../utils/dialog_utils.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  RegisterScreenState createState() => RegisterScreenState();
}

class RegisterScreenState extends State<RegisterScreen> {
  final FocusNode _focusNode = FocusNode();
  final _phoneController = TextEditingController();
  String _errorMessage = '';
  late final Openapi _api;

  @override
  void initState() {
    super.initState();
    _api = ApiService().api;
    ApiService().initializeInterceptors(context);
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
      _sendOtp(phoneNumber);
    }
  }

  void _sendOtp(String phoneNumber) async {
    DialogUtils.showLoadingDialog(context);

    try {
      final response = await _api.getAuthApi().authControllerSendOtp(
        sendOtpRequest: SendOtpRequest(phone: phoneNumber),
      );
      if (!mounted) return;
      Navigator.pop(context); // Đóng dialog loading
      Navigator.pushNamed(context, '/otp', arguments: response.data?.data);
    } catch (e) {
      if (!mounted) return;
      Navigator.pop(context); // Đóng dialog loading
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
            children: [
              SizedBox(height: 72.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Nhập số điện thoại của bạn",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: 8.0),
                  CupertinoTextField(
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
                  if (_errorMessage.isNotEmpty)
                    Column(
                      children: [
                        SizedBox(height: 8.0),
                        Text(
                          _errorMessage,
                          style: TextStyle(color: Colors.red, fontSize: 12),
                        ),
                      ],
                    ),
                ],
              ),
              Expanded(child: Container()),
              PrimaryButton(text: "Tiếp tục", onPressed: _submitPhoneNumber),
              SizedBox(height: 16.0),
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
