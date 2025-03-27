import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({super.key});

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          SizedBox(height: 16.0),
          Text(
            'Lịch sử hoạt động',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          ),
          SizedBox(height: 16.0),
          Expanded(
            child: ListView.separated(
              itemCount: 50,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(
                    'Từ cổng trường Đại học Bách khoa đến cổng trường Đại học Bách khoa Hà Nội đến cổng trường Đại học Bách khoa Hà Nội',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  subtitle: Text(
                    DateFormat('HH:mm dd/MM/yyyy').format(DateTime.now()),
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                  trailing: Text(
                    NumberFormat.currency(
                      locale: 'vi_VN',
                      symbol: 'đ',
                    ).format(100000),
                    style: Theme.of(
                      context,
                    ).textTheme.titleMedium!.copyWith(color: Color(0xFF007AFF)),
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return Divider(
                  height: 1,
                  color: Color(0xFF8FA1B7).withAlpha(40),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
