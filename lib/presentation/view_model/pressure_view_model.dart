// Dart imports:
import 'dart:async';

// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:elecon/data/model/sensor/sensor.dart';
import 'package:elecon/data/repository/device_repository.dart';
import 'package:elecon/data/repository/pressure_repository.dart';
import 'package:elecon/foundation/extension/date_time.dart';
import 'package:elecon/presentation/view_model/device_view_model.dart';

final pressureViewModelProvider = ChangeNotifierProvider(
  (ref) => PressureViewModel(ref.read),
);

class PressureViewModel extends ChangeNotifier {
  PressureViewModel(this._reader);
  final Reader _reader;

  // リポジトリ
  late final PressureRepository _repository =
      _reader(pressureRepositoryProvider);
  late final DeviceRepository _deviceRepository =
      _reader(deviceRepositoryProvider);

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
