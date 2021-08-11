import 'dart:async';
import 'package:elecon/data/model/elevator/elevator.dart';
import 'package:elecon/data/repository/elevator_repository.dart';
import 'package:elecon/foundation/constants.dart';
import 'package:elecon/foundation/extension/iterable.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final elevatorViewModelProvider = ChangeNotifierProvider(
  (ref) => ElevatorViewModel(ref.read),
);

class ElevatorViewModel extends ChangeNotifier {
  ElevatorViewModel(this._reader);
  final Reader _reader;
  late final ElevatorRepository _repository = _reader(elevatorRepositoryProvider);

  StreamSubscription<List<Elevator>>? _subscription;

  List<Elevator>? _elevators;
  List<Elevator>? get elevators => _elevators;

  Elevator? get leftElevator =>
      _elevators?.firstWhereOrNull((v) => v.dir == Dir.left);
  Elevator? get rightElevator =>
      _elevators?.firstWhereOrNull((v) => v.dir == Dir.right);

  // データが新しいかどうかチェック（最新30秒までかどうか）
  bool isNewDateTime(DateTime? dt) {
    if (dt == null) {
      return false;
    }
    final diff = DateTime.now().difference(dt).inSeconds;
    return diff < 30.0;
  }

  // エレベータ内 人数
  int? get leftPeople =>
      isNewDateTime(leftElevator?.created) ? leftElevator?.people : null;
  int? get rightPeople =>
      isNewDateTime(rightElevator?.created) ? rightElevator?.people : null;

  void fetchDataRealtime() {
    _subscription = _repository.getDataRealtime().listen(
      (data) {
        _elevators = data;
        notifyListeners();
      },
    );
  }

  void cancel() {
    _subscription!.cancel();
  }
}
