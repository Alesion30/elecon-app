import 'dart:async';
import 'package:elecon/data/model/device/device.dart';
import 'package:elecon/data/model/result.dart';
import 'package:elecon/data/repository/device_repository.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final deviceViewModelProvider = ChangeNotifierProvider(
  (ref) => DeviceViewModel(ref.read),
);

class DeviceViewModel extends ChangeNotifier {
  DeviceViewModel(this._reader);
  final Reader _reader;
  late final DeviceRepository _repository = _reader(deviceRepositoryProvider);

  // stream
  StreamSubscription<Device>? _deviceSubscription;

  // データ
  Device? _device;
  Device? get device => _device;

  // 保存するかどうか
  bool get _isSave => _device?.isSave ?? false;
  bool get isSave => _isSave;

  Future<void> init() async {
    await saveBasicData();
    fetchDeviceDataRealtime();
  }

  // デバイス情報を取得
  void fetchDeviceDataRealtime() {
    _deviceSubscription = _repository.getBasicDataRealtime().listen(
      (data) {
        _device = data;
        notifyListeners();
      },
    );
  }

  Future<Result<void>> saveBasicData() {
    return _repository.saveBasicData();
  }

  void cancel() {
    _deviceSubscription!.cancel();
  }
}
