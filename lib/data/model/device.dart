import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:elecon/data/model/ble.dart';
import 'package:elecon/data/model/converter.dart';
import 'package:elecon/foundation/constants.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'device.freezed.dart';
part 'device.g.dart';

@freezed
class Device with _$Device {
  factory Device({
    String? id,
    String? name,
    @AppModeConverter() AppMode? mode,
    @DirConverter() Dir? dir,
    int? floor,
    bool? isSave,
    @TimeStampConverter() DateTime? created,
  }) = _Device;

  factory Device.fromDocument(DocumentSnapshot doc) {
    final data = doc.data() as Map<String, dynamic>?;
    return Device.fromJson(data!);
  }

  factory Device.fromJson(Map<String, dynamic> json) => _$DeviceFromJson(json);
}

@freezed
class DeviceBle with _$DeviceBle {
  @JsonSerializable(explicitToJson: true)
  factory DeviceBle({
    List<Ble>? data,
    @TimeStampConverter() DateTime? created,
  }) = _DeviceBle;

  factory DeviceBle.fromJson(Map<String, dynamic> json) =>
      _$DeviceBleFromJson(json);
}
