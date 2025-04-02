import 'package:drunkdriver/api/lib/openapi.dart';
import 'package:drunkdriver/providers/api_provider.dart';
import 'package:drunkdriver/screens/location_search_screen.dart';
import 'package:drunkdriver/widgets/primary_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class ProfileCreationScreen extends StatefulWidget {
  const ProfileCreationScreen({super.key});

  @override
  State<ProfileCreationScreen> createState() => _ProfileCreationScreenState();
}

class _ProfileCreationScreenState extends State<ProfileCreationScreen> {
  String selectedGender = 'Male';
  DateTime? _selectedDate;
  final _nameController = TextEditingController();
  final _addressController = TextEditingController();
  GeometryLocation? _geometryLocation;


  _submit() {
    print(_addressController.text);
    context.read<ApiProvider>().api.getAuthApi().authControllerCreateProfile(
      headers: {
        'Authorization': 'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwicGhvbmUiOiIrODQ4NjU3MDc5MDYiLCJlbWFpbCI6bnVsbCwicm9sZSI6W10sImlhdCI6MTc0MzYwMzUzODYxOSwiZXhwIjoxNzQzNjM1MDk2MjE5fQ.GpDYp3xWIpb6ftzW5N91r11NbHY8r0p3Y8pOh7KSf3M',
      },
      createProfileRequest: CreateProfileRequest(
        name: _nameController.text,
        isMale: selectedGender == 'Male',
        dateOfBirth: _selectedDate!,
        address: Address(
          addressLine: _addressController.text,
          latitude: _geometryLocation?.lat ?? 0,
          longitude: _geometryLocation?.lng ?? 0,
        ),
      ),
      extra: { 'context': context, 'isLoading': true },
    );
    if (!mounted) return;
    Navigator.pushNamed(context, '/');
  }
  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Tạo tài khoản',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          ),
          centerTitle: true,
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Họ và tên',
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 8.0),
                        CupertinoTextField(
                          controller: _nameController,
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
                    SizedBox(height: 16.0),
                    Column(
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
                              activeColor: Color(0xFFFFC41E),
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
                              activeColor: Color(0xFFFFC41E),
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
                    SizedBox(height: 16.0),
                    Column(
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
                          onTap: () async {
                            final DateTime?
                            pickedDate = await showCupertinoModalPopup(
                              context: context,
                              builder: (BuildContext context) {
                                return Container(
                                  height: 300,
                                  padding: const EdgeInsets.only(top: 6.0),
                                  margin: EdgeInsets.only(
                                    bottom:
                                        MediaQuery.of(
                                          context,
                                        ).viewInsets.bottom,
                                  ),
                                  color: CupertinoColors.systemBackground
                                      .resolveFrom(context),
                                  child: SafeArea(
                                    top: false,
                                    child: Column(
                                      children: [
                                        Expanded(
                                          child: CupertinoDatePicker(
                                            initialDateTime:
                                                _selectedDate ?? DateTime.now(),
                                            mode: CupertinoDatePickerMode.date,
                                            use24hFormat: true,
                                            onDateTimeChanged: (
                                              DateTime newDate,
                                            ) {
                                              setState(() {
                                                _selectedDate = newDate;
                                              });
                                            },
                                          ),
                                        ),
                                        CupertinoButton(
                                          child: Text('Xác nhận'),
                                          onPressed: () {
                                            Navigator.of(
                                              context,
                                            ).pop(_selectedDate);
                                          },
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                            );
                            if (pickedDate != null) {
                              setState(() {
                                _selectedDate = pickedDate;
                              });
                            }
                          },
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
                    SizedBox(height: 16.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Địa chỉ nhà',
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 8.0),
                        CupertinoTextField(
                          readOnly: true,
                          controller: _addressController,
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
                          onTap: () async {
                            final PlaceResult result = await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder:
                                    (context) => LocationSearchScreen(
                                      title: 'Tìm kiếm địa chỉ',
                                    ),
                              ),
                            );
                            final response = await context.read<ApiProvider>().api.getGeoApi().geoControllerGetPlaceDetails(placeId: result.placeId);
            
                            _addressController.text = response.data?.result.formattedAddress ?? '';
                            _geometryLocation = response.data?.result.geometry.location;
                          },
                        ),
                      ],
                    ),
                  ],
                ),
                Expanded(child: Container()),
                PrimaryButton(
                  onPressed: () {
                    // Add your action here\
                    _submit();
                  },
                  text: 'Đăng ký',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
