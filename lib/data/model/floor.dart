import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:elecon/data/model/converter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'floor.freezed.dart';
part 'floor.g.dart';

@freezed
abstract class Floor with _$Floor {
  factory Floor({
    int? floor,
    int? congestion,
    @DateTimeConverter() DateTime? created,
  }) = _Floor;

  factory Floor.fromDocument(DocumentSnapshot doc) {
    final data = doc.data() as Map?;
    final floor = data?['floor'] as int?;
    final congestion = data?['congestion'] as int?;
    final _timestamp = data?['created'] as Timestamp?;
    final created = _timestamp?.toDate();

    return Floor(
      floor: floor,
      congestion: congestion,
      created: created,
    );
  }

  factory Floor.fromJson(Map<String, dynamic> json) => _$FloorFromJson(json);
}
