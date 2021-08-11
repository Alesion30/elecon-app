import 'dart:async';
import 'package:elecon/data/model/ble/ble.dart';
import 'package:elecon/data/model/device/device.dart';
import 'package:elecon/data/model/elevator/elevator.dart';
import 'package:elecon/data/repository/ble_repository.dart';
import 'package:elecon/data/repository/device_repository.dart';
import 'package:elecon/data/repository/elevator_repository.dart';
import 'package:elecon/data/repository/floor_repository.dart';
import 'package:elecon/foundation/constants.dart';
import 'package:elecon/view/view_model/device_view_model.dart';
import 'package:elecon/view/view_model/floor_view_model.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:elecon/foundation/extension/date_time.dart';

final bleViewModelProvider = ChangeNotifierProvider(
  (ref) => BleViewModel(ref.read),
);

class BleViewModel extends ChangeNotifier {
  BleViewModel(this._reader);
  final Reader _reader;

  // リポジトリ
  late final BleRepository _repository = _reader(bleRepositoryProvider);
  late final DeviceRepository _deviceRepository = _reader(deviceRepositoryProvider);
  late final ElevatorRepository _elevatorRepository =
      _reader(elevatorRepositoryProvider);
  late final FloorRepository _floorRepository = _reader(floorRepositoryProvider);

  // ViewModel
  late final FloorViewModel _floorViewModel = _reader(floorViewModelProvider);
  late final DeviceViewModel _deviceViewModel =
      _reader(deviceViewModelProvider);

  // constants
  final _constants = Constants.instance;

  // stream
  StreamSubscription<List<Ble>>? _bleSubscription;

  // データ
  List<Ble>? _bles;
  List<Ble>? get bles => _bles;

  // 信号数（rssiが-70以上）
  int? get count => _bles
      ?.where((ble) => ble.rssi != null && ble.rssi! > -70)
      .toList()
      .length;

  // ストックデータ
  List<Ble> _stockBleData = [];
  List<ElevatorCount> _stockElevatorData = [];
  String? _lastSaveDate = DateTime.now().formatYYYYMMddHHmm();
  String? _lastElevatorSaveDate = DateTime.now().formatYYYYMMddHHmm();

  void init() {
    getBleDataRealtime();
  }

  // BLEのデータをリアルタイムで取得
  void getBleDataRealtime() {
    _bleSubscription = _repository.getDataRealtime().listen(
      (data) {
        final now = DateTime.now();
        _bles = data;

        // 保存モード時
        if (_deviceViewModel.isSave) {
          _stockBleData += data;

          // エレベーター情報を更新する（センサモードのみ）
          if (_constants.appMode == AppMode.sensor) {
            _stockElevatorData.add(
              ElevatorCount(people: count, created: DateTime.now()),
            );
            _elevatorRepository.saveData(count!);

            // エレベーター情報のログを保存する（5分おきに）
            if (now.formatYYYYMMddHHmm() != _lastElevatorSaveDate &&
                now.minute % 5 == 0) {
              _elevatorRepository.saveLog(_stockElevatorData).then((result) {
                result.ifSuccess((_) {
                  _stockElevatorData = [];
                  _lastElevatorSaveDate = now.formatYYYYMMddHHmm();
                });
              });
            }
          }

          // 混雑度情報をリセットする（ホールモードのみ）
          if (_constants.appMode == AppMode.hall) {
            if (count == 0 && _floorViewModel.currentFloor?.congestion != 0) {
              _floorRepository.setCongestion(0);
            }
          }

          // センサの値を保存する（1分おきに）
          if (now.formatYYYYMMddHHmm() != _lastSaveDate) {
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
        } else {
          // 初期化
          _stockBleData = [];
          _stockElevatorData = [];
        }

        notifyListeners();
      },
    );
  }

  void cancel() {
    _bleSubscription!.cancel();
  }
}
