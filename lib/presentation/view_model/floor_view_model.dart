// Dart imports:
import 'dart:async';

// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:elecon/data/model/floor/floor.dart';
import 'package:elecon/data/repository/floor_repository.dart';
import 'package:elecon/foundation/constants.dart';
import 'package:elecon/foundation/extension/iterable.dart';

final floorViewModelProvider = ChangeNotifierProvider(
  (ref) => FloorViewModel(ref.read),
);

class FloorViewModel extends ChangeNotifier {
  FloorViewModel(this._reader);
  final Reader _reader;
  late final FloorRepository _repository = _reader(floorRepositoryProvider);

  StreamSubscription<List<Floor>>? _subscription;

  // constants
  final _constants = Constants.instance;

  List<Floor>? _floors;
  List<Floor>? get floors => _floors;
  Floor? get currentFloor =>
      _floors?.firstWhereOrNull((v) => v.floor == _constants.floor);

  void fetchDataRealtime() {
    _subscription = _repository.getDataRealtime().listen(
      (data) {
        _floors = data;
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
