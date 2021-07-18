import 'package:freezed_annotation/freezed_annotation.dart';

part 'ble.freezed.dart';
part 'ble.g.dart';

@freezed
abstract class Ble with _$Ble {
  factory Ble({
    String? id,
    int? rssi,
    DateTime? created,
  }) = _Ble;

  factory Ble.fromJson(Map<String, dynamic> json) => _$BleFromJson(json);
}
