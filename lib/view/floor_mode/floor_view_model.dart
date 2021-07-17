import 'package:elecon/data/model/floor.dart';
import 'package:elecon/data/service/floor_service.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final floorViewModelProvider =
    ChangeNotifierProvider((ref) => FloorViewModel(ref.read));

class FloorViewModel extends ChangeNotifier {
  FloorViewModel(this._reader);

  final Reader _reader;

  late final FloorService _repository = _reader(floorServiceProvider);

  List<Floor>? _floors;

  List<Floor>? get floors => _floors;

  Future<void> fetchData() {
    return _repository
        .getData()
        .then(
          (value) => value.ifSuccess(
            (data) => _floors = data,
          ),
        )
        .whenComplete(notifyListeners);
  }
}
