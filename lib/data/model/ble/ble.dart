// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:elecon/data/model/converter.dart';

part 'ble.freezed.dart';
part 'ble.g.dart';

@freezed
class Ble with _$Ble {
  factory Ble({
    String? id,
    int? rssi,
    @TimeStampConverter() DateTime? created,
  }) = _Ble;

  factory Ble.fromJson(Map<String, dynamic> json) => _$BleFromJson(json);
}
