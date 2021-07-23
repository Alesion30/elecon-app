import 'dart:async';
import 'package:elecon/data/service/pressure_service.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final pressureViewModelProvider = ChangeNotifierProvider(
  (ref) => PressureViewModel(ref.read),
);

class PressureViewModel extends ChangeNotifier {
  PressureViewModel(this._reader);
  final Reader _reader;
  late final PressureService _repository = _reader(pressureServiceProvider);

  double? get pressure => _pressure != null ? (_pressure! * 100).ceil() / 100 : null;
  double? _pressure;
  bool _isAvailable = false;

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
