import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:elecon/data/model/converter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'elevator.freezed.dart';
part 'elevator.g.dart';

@freezed
class Elevator with _$Elevator {
  factory Elevator({
    String? id,
    int? people,
    @DirConverter() Dir? dir,
    @TimeStampConverter() DateTime? created,
  }) = _Elevator;

  factory Elevator.fromDocument(DocumentSnapshot doc) {
    final data = doc.data() as Map<String, dynamic>?;
    return Elevator.fromJson(data!);
  }

  factory Elevator.fromJson(Map<String, dynamic> json) => _$ElevatorFromJson(json);
}

@freezed
class ElevatorLog with _$ElevatorLog {
  @JsonSerializable(explicitToJson: true)
  factory ElevatorLog({
    List<ElevatorCount>? data,
    @TimeStampConverter() DateTime? created,
  }) = _ElevatorLog;

  factory ElevatorLog.fromDocument(DocumentSnapshot doc) {
    final data = doc.data() as Map<String, dynamic>?;
    return ElevatorLog.fromJson(data!);
  }

  factory ElevatorLog.fromJson(Map<String, dynamic> json) => _$ElevatorLogFromJson(json);
}

@freezed
class ElevatorCount with _$ElevatorCount {
  factory ElevatorCount({
    int? people,
    @TimeStampConverter() DateTime? created,
  }) = _ElevatorCount;

  factory ElevatorCount.fromDocument(DocumentSnapshot doc) {
    final data = doc.data() as Map<String, dynamic>?;
    return ElevatorCount.fromJson(data!);
  }

  factory ElevatorCount.fromJson(Map<String, dynamic> json) => _$ElevatorCountFromJson(json);
}
