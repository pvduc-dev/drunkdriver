import 'package:drunkdriver/widgets/primary_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ProfileCreationScreen extends StatefulWidget {
  const ProfileCreationScreen({super.key});

  @override
  State<ProfileCreationScreen> createState() => _ProfileCreationScreenState();
}

class _ProfileCreationScreenState extends State<ProfileCreationScreen> {
  String selectedGender = 'Male';
  DateTime? _selectedDate;

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              SizedBox(height: 72),
              Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Họ và tên',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 8.0),
                      CupertinoTextField(
                        padding: const EdgeInsets.all(16.0),
                        decoration: BoxDecoration(
                          color: Color(0xFFE2EAF1).withAlpha(51),
                          border: Border.all(
                            color: Color(0xFF8FA1B7).withAlpha(89),
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        onChanged: (value) {
                          // Handle changes here
                        },
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Giới tính',
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 8.0),
                        Row(
                          children: [
                            Radio<String>(
                              value: 'Male',
                              groupValue: selectedGender,
                              onChanged: (value) {
                                setState(() {
                                  selectedGender = value!;
                                });
                              },
                            ),
                            Text('Nam', style: TextStyle(fontSize: 16.0)),
                            SizedBox(width: 16),
                            Radio<String>(
                              value: 'Female',
                              groupValue: selectedGender,
                              onChanged: (value) {
                                setState(() {
                                  selectedGender = value!;
                                });
                              },
                            ),
                            Text('Nữ', style: TextStyle(fontSize: 16.0)),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Ngày sinh',
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 8.0),
                        GestureDetector(
                          onTap: () async {},
                          child: Container(
                            padding: const EdgeInsets.all(12.0),
                            decoration: BoxDecoration(
                              color: Color(0xFFE2EAF1).withAlpha(51),
                              border: Border.all(
                                color: Color(0xFF8FA1B7).withAlpha(89),
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              children: [
                                Icon(CupertinoIcons.calendar),
                                SizedBox(width: 8.0),
                                Text(
                                  _selectedDate != null
                                      ? DateFormat(
                                        'dd/MM/yyyy',
                                      ).format(_selectedDate!)
                                      : 'Chọn ngày sinh',
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    color: CupertinoColors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Địa chỉ nhà',
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 8.0),
                        CupertinoTextField(
                          padding: const EdgeInsets.all(16.0),
                          maxLines: 3,
                          decoration: BoxDecoration(
                            color: Color(0xFFE2EAF1).withAlpha(51),
                            border: Border.all(
                              color: Color(0xFF8FA1B7).withAlpha(89),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Expanded(child: Container()),
              Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: PrimaryButton(
                  onPressed: () {
                    // Add your action here
                  },
                  text: 'Đăng ký',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
