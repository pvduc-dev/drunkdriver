import 'dart:async';

import 'package:drunkdriver/providers/api_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class LocationSearchScreen extends StatefulWidget {
  final String title;
  final String? initialAddress;

  const LocationSearchScreen({
    super.key,
    required this.title,
    this.initialAddress,
  });

  @override
  State<LocationSearchScreen> createState() => _LocationSearchScreenState();
}

class _LocationSearchScreenState extends State<LocationSearchScreen> {
  final _searchController = TextEditingController();
  final _focusNode = FocusNode();
  List<PlaceResult> _searchResults = [];
  Timer? _debounce;
  _onSearch(String value) async {
    final response = await context
        .read<ApiProvider>()
        .api
        .getGeoApi()
        .geoControllerGetAutocomplete(
          input: value,
          extra: {'context': context, 'isLoading': false},
        );
    setState(() {
      _searchResults =
          response.data?.predictions
              ?.map(
                (e) => PlaceResult(
                  placeId: e.placeId,
                  name: e.structuredFormatting.mainText,
                  address: e.description,
                ),
              )
              .toList() ??
          [];
    });
  }

  @override
  void initState() {
    super.initState();
    _searchController.text = widget.initialAddress ?? '';
    _focusNode.requestFocus();
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text(widget.title),
        leading: CupertinoButton(
          padding: EdgeInsets.zero,
          child: Icon(CupertinoIcons.back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      child: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: CupertinoSearchTextField(
                controller: _searchController,
                focusNode: _focusNode,
                placeholder: 'Tìm kiếm địa điểm',
                onChanged: (value) {
                  if (_debounce?.isActive ?? false) _debounce?.cancel();
                  _debounce = Timer(const Duration(milliseconds: 1000), () {
                    _onSearch(value);
                  });
                },
              ),
            ),
            Expanded(
              child: ListView.separated(
                itemCount: _searchResults.length,
                separatorBuilder: (context, index) => Divider(height: 1),
                itemBuilder: (context, index) {
                  final result = _searchResults[index];
                  return CupertinoButton(
                    padding: EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 12.0,
                    ),
                    onPressed: () {
                      Navigator.pop(context, result);
                    },
                    child: Row(
                      children: [
                        Icon(
                          CupertinoIcons.location_solid,
                          color: CupertinoColors.systemGrey,
                        ),
                        SizedBox(width: 16),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                result.name,
                                style: TextStyle(
                                  fontSize: 17,
                                  color: CupertinoColors.black,
                                ),
                              ),
                              Text(
                                result.address,
                                style: TextStyle(
                                  fontSize: 15,
                                  color: CupertinoColors.systemGrey,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PlaceResult {
  final String name;
  final String address;
  final String placeId;

  PlaceResult({required this.name, required this.address, required this.placeId});
}
