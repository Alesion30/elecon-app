import 'dart:async';
import 'package:elecon/data/service/device_service.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final viewModelProvider = ChangeNotifierProvider(
  (ref) => ViewModel(ref.read),
);

class ViewModel extends ChangeNotifier {
  ViewModel(this._reader);
  final Reader _reader;
  late final DeviceService _repository = _reader(deviceServiceProvider);

  StreamSubscription<int?>? _subscription;

  void fetchBatteryLevelRealtime() {
    _subscription = _repository.getBatteryLevelStream().listen(
      (data) async {
        await _repository.saveBatteryLevel(data);
      },
    );
  }

  void cancel() {
    _subscription?.cancel();
  }
}
