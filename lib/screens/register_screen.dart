import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import '../widgets/primary_button.dart';
import 'package:openapi/openapi.dart';
import '../utils/dialog_utils.dart';
import '../providers/api_provider.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  RegisterScreenState createState() => RegisterScreenState();
}

class RegisterScreenState extends State<RegisterScreen> {
  final FocusNode _focusNode = FocusNode();
  final _phoneController = TextEditingController();
  final _errorMessage = '';

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
    _sendOtp(phoneNumber);
  }

  void _sendOtp(String phoneNumber) async {
    final api = context.read<ApiProvider>().api;
    final response = await api.getAuthApi().authControllerSendOtp(
      sendOtpRequest: SendOtpRequest(phone: phoneNumber),
      extra: {'context': context, 'isLoading': true},
    );
    if (!mounted) return;
    Navigator.pushNamed(context, '/otp', arguments: response.data?.data);
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text(
            'Đăng ký/Đăng nhập',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          ),
          centerTitle: true,
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Nhập số điện thoại của bạn",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 8.0),
                    CupertinoTextField(
                      controller: _phoneController,
                      focusNode: _focusNode,
                      keyboardType: TextInputType.phone,
                      padding: EdgeInsets.all(12),
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
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
                ValueListenableBuilder<TextEditingValue>(
                  valueListenable: _phoneController,
                  builder: (context, value, child) {
                    return PrimaryButton(
                      text: "Tiếp tục",
                      onPressed: _submitPhoneNumber,
                      disabled: value.text.length != 10,
                    );
                  },
                ),
              ],
            ),
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
