import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class DriverRequestScreen extends StatelessWidget {
  const DriverRequestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Request a Ride')),
      body: Column(
        children: [
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Điểm xuất phát",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
                SizedBox(height: 6), // Khoảng cách giữa label và input
                CupertinoTextField(
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    border: Border.all(color: CupertinoColors.systemGrey, width: 1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ],
            ),
          ),
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Điểm đến",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
                SizedBox(height: 6), // Khoảng cách giữa label và input
                CupertinoTextField(
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    border: Border.all(color: CupertinoColors.systemGrey, width: 1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
