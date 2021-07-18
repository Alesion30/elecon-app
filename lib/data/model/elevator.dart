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
