import 'package:drunkdriver/api/lib/openapi.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:drunkdriver/providers/api_provider.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({super.key});

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  List<Trip> _trips = [];

  @override
  void initState() {
    super.initState();
    _getTrips();
  }

  Future<void> _getTrips() async {
    final api = context.read<ApiProvider>().api;
    final response = await api.getTripsApi().tripsControllerFindAll(
      extra: {'context': context, 'isLoading': true},
    );
    final trips = response.data;
    setState(() {
      _trips = trips ?? [];
    });
  }

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
              itemCount: _trips.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(
                    'Từ ${_trips[index].pickupLocation?.addressLine ?? ''} đến ${_trips[index].dropoffLocation?.addressLine ?? ''}',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  subtitle: Text(
                    DateFormat(
                      'HH:mm dd/MM/yyyy',
                    ).format(_trips[index].startTime ?? DateTime.now()),
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                  trailing: SizedBox(
                    width: 100,
                    child: Text(
                      NumberFormat.currency(
                        locale: 'vi_VN',
                        symbol: 'đ',
                      ).format(int.parse(_trips[index].actualCost ?? '0')),
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        color: Color(0xFF007AFF),
                      ),
                      textAlign: TextAlign.end,
                    ),
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
