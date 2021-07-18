import 'dart:async';
import 'package:elecon/data/model/ble.dart';
import 'package:elecon/data/model/device.dart';
import 'package:elecon/data/service/ble_service.dart';
import 'package:elecon/data/service/device_service.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:elecon/foundation/extension/date_time.dart';

final bleViewModelProvider = ChangeNotifierProvider(
  (ref) => BleViewModel(ref.read),
);

class BleViewModel extends ChangeNotifier {
  BleViewModel(this._reader);
  final Reader _reader;
  late final BleService _repository = _reader(bleServiceProvider);
  late final DeviceService _deviceRepository = _reader(deviceServiceProvider);

  StreamSubscription<List<Ble>>? _subscription;

  List<Ble>? _bles;
  List<Ble>? get bles => _bles;

  // ストックデータ
  List<Ble> _stockBleData = [];
  String? _lastSaveDate = DateTime.now().formatYYYYMMddHHmm();

  void fetchDataRealtime() {
    _subscription = _repository.getDataRealtime().listen(
      (data) {
        _bles = data;
        _stockBleData += data;

        // 保存する（1分毎に）
        final now = DateTime.now();
        if (now.formatYYYYMMddHHmm() != _lastSaveDate) {
          print('_lastSaveDate: $_lastSaveDate');
          print('_stockBleData: $_stockBleData');
          final deviceBle = DeviceBle(
            data: _stockBleData,
            created: now,
          );
          _deviceRepository.saveBleData(deviceBle).then((result) {
            result.ifSuccess((_) {
              _stockBleData = [];
              _lastSaveDate = now.formatYYYYMMddHHmm();
            });
          });
        }

        print('_bles: $_bles');
        notifyListeners();
      },
    );
  }

  void cancel() {
    _subscription!.cancel();
  }
}
