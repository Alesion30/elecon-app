import 'dart:async';
import 'package:elecon/data/model/sensor.dart';
import 'package:elecon/data/service/device_service.dart';
import 'package:elecon/data/service/pressure_service.dart';
import 'package:elecon/view/view_model/device_view_model.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:elecon/foundation/extension/date_time.dart';

final pressureViewModelProvider = ChangeNotifierProvider(
  (ref) => PressureViewModel(ref.read),
);

class PressureViewModel extends ChangeNotifier {
  PressureViewModel(this._reader);
  final Reader _reader;

  // リポジトリ
  late final PressureService _repository = _reader(pressureServiceProvider);
  late final DeviceService _deviceRepository = _reader(deviceServiceProvider);

  // ViewModel
  late final DeviceViewModel _deviceViewModel =
      _reader(deviceViewModelProvider);

  // データ
  double? get pressure =>
      _pressure != null ? (_pressure! * 100).ceil() / 100 : null;
  double? _pressure;
  bool _isAvailable = false;

  // ストックデータ
  List<Sensor> _stockPressureData = [];
  String? _lastSaveDate = DateTime.now().formatYYYYMMddHHmm();
  String? _lastAddDate = DateTime.now().formatYYYYMMddHHmmss();

  // stream
  StreamSubscription<double?>? _pressureSubscription;

  Future<void> init() async {
    _isAvailable = await getSensorAvailable();
    notifyListeners();
    if (_isAvailable) {
      getPressureRealtime();
    } else {
      print('このデバイスは気圧センサを使用できません');
    }
  }

  // 気圧センサの値をリアルタイムで取得
  void getPressureRealtime() {
    _pressureSubscription = _repository.getPressureStream().listen(
      (data) {
        _pressure = data;

        // 保存モード時
        if (_deviceViewModel.isSave) {
          final now = DateTime.now();

          // 1秒に1回、配列に格納
          if (now.formatYYYYMMddHHmmss() != _lastAddDate) {
            _stockPressureData.add(
              Sensor(value: data, created: DateTime.now()),
            );
            _lastAddDate = now.formatYYYYMMddHHmmss();
          }

          // 1分に1回、DBに保存
          if (now.formatYYYYMMddHHmm() != _lastSaveDate) {
            _deviceRepository
                .savePressureData(_stockPressureData)
                .then((result) {
              result.ifSuccess((_) {
                _stockPressureData = [];
                _lastSaveDate = now.formatYYYYMMddHHmm();
              });
            });
          }
        } else {
          // 初期化
          _stockPressureData = [];
        }

        notifyListeners();
      },
    );
  }

  // 気圧センサが利用可能かどうか
  Future<bool> getSensorAvailable() async {
    var isAvailable = false;
    final result = await _repository.getPressureSensorAvailable();
    result.ifSuccess((data) => isAvailable = data);
    return isAvailable;
  }

  void cancel() {
    _pressureSubscription!.cancel();
  }
}
