// Package imports:
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:elecon/data/model/converter.dart';

part 'floor.freezed.dart';
part 'floor.g.dart';

@freezed
class Floor with _$Floor {
  factory Floor({
    int? floor,
    int? congestion,
    @TimeStampConverter() DateTime? created,
  }) = _Floor;

  factory Floor.fromDocument(DocumentSnapshot doc) {
    final data = doc.data() as Map<String, dynamic>?;
    return Floor.fromJson(data!);
  }

  factory Floor.fromJson(Map<String, dynamic> json) => _$FloorFromJson(json);
}
