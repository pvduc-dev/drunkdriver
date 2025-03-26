import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          const SizedBox(height: 64),
          Text('Tài khoản', style: Theme.of(context).textTheme.titleLarge),
          const SizedBox(height: 16),
          Column(
            children: [
              ListTile(
                leading: const Icon(CupertinoIcons.person),
                title: const Text('Thông tin cá nhân'),
              ),
              ListTile(
                leading: const Icon(Iconsax.card_copy),
                title: const Text('Phương thức thanh toán'),
              ),
              ListTile(
                leading: const Icon(Iconsax.setting_2_copy),
                title: const Text('Cài đặt'),
              ),
              ListTile(
                leading: const Icon(Iconsax.lock_copy),
                title: const Text('Bảo mật'),
              ),
              ListTile(
                leading: const Icon(Iconsax.info_circle_copy),
                title: const Text('Thông tin ứng dụng'),
              ),
              ListTile(
                leading: const Icon(Iconsax.logout_copy, color: Colors.red),
                title: const Text(
                  'Đăng xuất',
                  style: TextStyle(color: Colors.red),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
