import 'package:drunkdriver/widgets/primary_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:form_builder_extra_fields/form_builder_extra_fields.dart';

class ProfileCreationScreen extends StatefulWidget {
  const ProfileCreationScreen({super.key});

  @override
  State<ProfileCreationScreen> createState() => _ProfileCreationScreenState();
}

class _ProfileCreationScreenState extends State<ProfileCreationScreen> {
  final _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: FormBuilder(
            key: _formKey,
            child: Column(
              children: [
                SizedBox(height: 72),
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
                        FormBuilderTextField(
                          name: 'fullName',
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Color(0xFFE2EAF1).withAlpha(51),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                color: Color(0xFF8FA1B7).withAlpha(89),
                                width: 1,
                              ),
                            ),
                            contentPadding: EdgeInsets.all(16.0),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Vui lòng nhập họ tên';
                            }
                            return null;
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
                          FormBuilderRadioGroup(
                            name: 'gender',
                            options: [
                              FormBuilderFieldOption(
                                value: 'Male',
                                child: Text('Nam'),
                              ),
                              FormBuilderFieldOption(
                                value: 'Female',
                                child: Text('Nữ'),
                              ),
                            ],
                            initialValue: 'Male',
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.zero,
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
                            'Ngày sinh',
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(height: 8.0),
                          FormBuilderDateTimePicker(
                            name: 'birthDate',
                            inputType: InputType.date,
                            format: DateFormat('dd/MM/yyyy'),
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Color(0xFFE2EAF1).withAlpha(51),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color: Color(0xFF8FA1B7).withAlpha(89),
                                  width: 1,
                                ),
                              ),
                              prefixIcon: Icon(CupertinoIcons.calendar),
                              contentPadding: EdgeInsets.all(16.0),
                            ),
                            validator: (value) {
                              if (value == null) {
                                return 'Vui lòng chọn ngày sinh';
                              }
                              return null;
                            },
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
                            'Địa chỉ nhà',
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(height: 8.0),
                          FormBuilderTextField(
                            name: 'address',
                            maxLines: 3,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Color(0xFFE2EAF1).withAlpha(51),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color: Color(0xFF8FA1B7).withAlpha(89),
                                  width: 1,
                                ),
                              ),
                              contentPadding: EdgeInsets.all(16.0),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Vui lòng nhập địa chỉ';
                              }
                              return null;
                            },
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
                      if (_formKey.currentState?.saveAndValidate() ?? false) {
                        final formData = _formKey.currentState!.value;
                        print(formData);
                        // TODO: Handle form submission
                      }
                    },
                    text: 'Đăng ký',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
