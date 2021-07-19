import 'dart:async';
import 'package:elecon/data/model/elevator.dart';
import 'package:elecon/data/service/elevator_service.dart';
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
  late final ElevatorService _repository = _reader(elevatorServiceProvider);

  StreamSubscription<List<Elevator>>? _subscription;

  List<Elevator>? _elevators;
  List<Elevator>? get elevators => _elevators;

  Elevator? get leftElevator =>
      _elevators?.firstWhereOrNull((v) => v.dir == Dir.left);
  Elevator? get rightElevator =>
      _elevators?.firstWhereOrNull((v) => v.dir == Dir.right);

  // エレベータ内 人数
  int? get leftPeople => leftElevator?.people;
  int? get rightPeople => rightElevator?.people;

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
