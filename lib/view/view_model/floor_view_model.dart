import 'dart:async';
import 'package:elecon/data/model/floor.dart';
import 'package:elecon/data/service/floor_service.dart';
import 'package:elecon/foundation/constants.dart';
import 'package:elecon/foundation/extension/iterable.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final floorViewModelProvider = ChangeNotifierProvider(
  (ref) => FloorViewModel(ref.read),
);

class FloorViewModel extends ChangeNotifier {
  FloorViewModel(this._reader);
  final Reader _reader;
  late final FloorService _repository = _reader(floorServiceProvider);

  StreamSubscription<List<Floor>>? _subscription;

  // constants
  final _constants = Constants.instance;

  List<Floor>? _floors;
  List<Floor>? get floors => _floors;
  Floor? get currentFloor => _floors?.firstWhereOrNull((v) => v.floor == _constants.floor);

  void fetchDataRealtime() {
    _subscription = _repository.getDataRealtime().listen(
      (data) {
        _floors = data;
        print('--------------------------------');
        print(_floors);
        notifyListeners();
      },
    );
  }

  Future<void> setCongestion(int congestion) async {
    await _repository.setCongestion(congestion);
  }

  void cancel() {
    _subscription!.cancel();
  }
}
