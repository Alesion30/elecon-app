import 'dart:async';
import 'package:elecon/data/model/result.dart';
import 'package:elecon/data/service/device_service.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final deviceViewModelProvider = ChangeNotifierProvider(
  (ref) => DeviceViewModel(ref.read),
);

class DeviceViewModel extends ChangeNotifier {
  DeviceViewModel(this._reader);
  final Reader _reader;
  late final DeviceService _repository = _reader(deviceServiceProvider);

  Future<Result<void>> saveBasicData() {
    return _repository.saveBasicData();
  }
}
