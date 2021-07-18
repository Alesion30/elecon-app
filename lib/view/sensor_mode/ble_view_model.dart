import 'dart:async';
import 'package:elecon/data/model/ble.dart';
import 'package:elecon/data/service/ble_service.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final bleViewModelProvider = ChangeNotifierProvider(
  (ref) => BleViewModel(ref.read),
);

class BleViewModel extends ChangeNotifier {
  BleViewModel(this._reader);
  final Reader _reader;
  late final BleService _repository = _reader(bleServiceProvider);

  StreamSubscription<List<Ble>>? _subscription;

  List<Ble>? _bles;
  List<Ble>? get bles => _bles;

  void fetchDataRealtime() {
    _subscription = _repository.getDataRealtime().listen(
      (data) {
        _bles = data;
        print(_bles);
        notifyListeners();
      },
    );
  }

  void cancel() {
    _subscription!.cancel();
  }
}
