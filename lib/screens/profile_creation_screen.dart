import 'package:flutter/cupertino.dart';

class ProfileCreationScreen extends StatefulWidget {
  const ProfileCreationScreen({super.key});

  @override
  ProfileCreationScreenState createState() => ProfileCreationScreenState();
}

class ProfileCreationScreenState extends State<ProfileCreationScreen> {
  final _nameController = TextEditingController();
  final _addressController = TextEditingController();
  DateTime? _selectedDate;
  String? _selectedGender;

  String? _nameError;
  String? _genderError;
  String? _dobError;
  String? _addressError;

  final List<String> _genders = ['Nam', 'Nữ', 'Khác'];

  Future<void> _selectDate() async {
    final DateTime? picked = await showCupertinoModalPopup<DateTime>(
      context: context,
      builder: (context) {
        return Container(
          height: 300,
          color: CupertinoColors.white,
          child: Column(
            children: [
              Expanded(
                child: CupertinoDatePicker(
                  mode: CupertinoDatePickerMode.date,
                  initialDateTime: _selectedDate ?? DateTime.now(),
                  minimumDate: DateTime(1900),
                  maximumDate: DateTime.now(),
                  onDateTimeChanged: (DateTime newDate) {
                    setState(() {
                      _selectedDate = newDate;
                      _dobError = null; // Xóa lỗi khi chọn ngày
                    });
                  },
                ),
              ),
              CupertinoButton(
                child: const Text('Xong'),
                onPressed: () => Navigator.pop(context),
              ),
            ],
          ),
        );
      },
    );

    if (picked != null) {
      setState(() {
        _selectedDate = picked;
      });
    }
  }

  void _validateForm() {
    setState(() {
      // Validate Họ và tên
      _nameError = _nameController.text.trim().isEmpty ? 'Vui lòng nhập họ và tên' : null;

      // Validate Giới tính
      _genderError = _selectedGender == null ? 'Vui lòng chọn giới tính' : null;

      // Validate Ngày sinh
      _dobError = _selectedDate == null ? 'Vui lòng chọn ngày sinh' : null;

      // Validate Địa chỉ
      _addressError = _addressController.text.trim().isEmpty ? 'Vui lòng nhập địa chỉ' : null;
    });

    // Nếu không có lỗi, có thể xử lý tiếp (ở đây chỉ hiển thị thông báo)
    if (_nameError == null && _genderError == null && _dobError == null && _addressError == null) {
      // Form hợp lệ, bạn có thể thêm logic ở đây
      showCupertinoDialog(
        context: context,
        builder: (context) => CupertinoAlertDialog(
          title: const Text('Thành công'),
          content: const Text('Thông tin của bạn đã được ghi nhận.'),
          actions: [
            CupertinoDialogAction(
              onPressed: () => Navigator.pop(context),
              child: const Text('OK'),
            ),
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Tạo hồ sơ cá nhân'),
      ),
      child: SafeArea(
        child: Column(
          children: [
            SingleChildScrollView(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
                  const Text(
                    'Vui lòng điền thông tin của bạn',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 20),
                  // Họ và tên
                  CupertinoTextField(
                    controller: _nameController,
                    placeholder: 'Họ và tên',
                    padding: const EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: _nameError != null ? CupertinoColors.systemRed : CupertinoColors.lightBackgroundGray,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    onChanged: (value) {
                      setState(() {
                        _nameError = null; // Xóa lỗi khi người dùng nhập
                      });
                    },
                  ),
                  if (_nameError != null) ...[
                    const SizedBox(height: 5),
                    Text(
                      _nameError!,
                      style: const TextStyle(color: CupertinoColors.systemRed, fontSize: 14),
                    ),
                  ],
                  const SizedBox(height: 20),
                  // Giới tính
                  const Text(
                    'Giới tính',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 10),
                  GestureDetector(
                    onTap: () {
                      showCupertinoModalPopup(
                        context: context,
                        builder: (context) => CupertinoActionSheet(
                          title: const Text('Chọn giới tính'),
                          actions: _genders.map((gender) {
                            return CupertinoActionSheetAction(
                              onPressed: () {
                                setState(() {
                                  _selectedGender = gender;
                                  _genderError = null; // Xóa lỗi khi chọn
                                });
                                Navigator.pop(context);
                              },
                              child: Text(gender),
                            );
                          }).toList(),
                          cancelButton: CupertinoActionSheetAction(
                            onPressed: () => Navigator.pop(context),
                            child: const Text('Hủy'),
                          ),
                        ),
                      );
                    },
                    child: Container(
                      padding: const EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: _genderError != null ? CupertinoColors.systemRed : CupertinoColors.lightBackgroundGray,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            _selectedGender ?? 'Chọn giới tính',
                            style: TextStyle(
                              color: _selectedGender == null ? CupertinoColors.systemGrey : CupertinoColors.black,
                            ),
                          ),
                          const Icon(CupertinoIcons.chevron_down),
                        ],
                      ),
                    ),
                  ),
                  if (_genderError != null) ...[
                    const SizedBox(height: 5),
                    Text(
                      _genderError!,
                      style: const TextStyle(color: CupertinoColors.systemRed, fontSize: 14),
                    ),
                  ],
                  const SizedBox(height: 20),
                  // Ngày sinh
                  const Text(
                    'Ngày sinh',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 10),
                  GestureDetector(
                    onTap: _selectDate,
                    child: Container(
                      padding: const EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: _dobError != null ? CupertinoColors.systemRed : CupertinoColors.lightBackgroundGray,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            _selectedDate == null
                                ? 'Chọn ngày sinh'
                                : '${_selectedDate!.day}/${_selectedDate!.month}/${_selectedDate!.year}',
                            style: TextStyle(
                              color: _selectedDate == null ? CupertinoColors.systemGrey : CupertinoColors.black,
                            ),
                          ),
                          const Icon(CupertinoIcons.calendar),
                        ],
                      ),
                    ),
                  ),
                  if (_dobError != null) ...[
                    const SizedBox(height: 5),
                    Text(
                      _dobError!,
                      style: const TextStyle(color: CupertinoColors.systemRed, fontSize: 14),
                    ),
                  ],
                  const SizedBox(height: 20),
                  // Địa chỉ nhà
                  CupertinoTextField(
                    controller: _addressController,
                    placeholder: 'Địa chỉ nhà',
                    padding: const EdgeInsets.all(16.0),
                    maxLines: 3,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: _addressError != null ? CupertinoColors.systemRed : CupertinoColors.lightBackgroundGray,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    onChanged: (value) {
                      setState(() {
                        _addressError = null; // Xóa lỗi khi người dùng nhập
                      });
                    },
                  ),
                  if (_addressError != null) ...[
                    const SizedBox(height: 5),
                    Text(
                      _addressError!,
                      style: const TextStyle(color: CupertinoColors.systemRed, fontSize: 14),
                    ),
                  ],
                  // Thêm khoảng trống để nút không che nội dung
                  const SizedBox(height: 80),
                ],
              ),
            ),
            // Nút Đăng ký ở dưới cùng
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                padding: const EdgeInsets.all(16.0),
                color: CupertinoColors.white,
                child: CupertinoButton.filled(
                  onPressed: _validateForm,
                  borderRadius: BorderRadius.circular(8),
                  child: Container(
                    alignment: Alignment.center,
                    child: const Text(
                      'Đăng ký',
                      style: TextStyle(fontSize: 18),
                    ),
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
    _nameController.dispose();
    _addressController.dispose();
    super.dispose();
  }
}