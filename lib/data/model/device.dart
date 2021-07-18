import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:elecon/data/model/ble.dart';
import 'package:elecon/data/model/converter.dart';
import 'package:elecon/foundation/constants.dart';
import 'package:enum_to_string/enum_to_string.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'device.freezed.dart';
part 'device.g.dart';

@freezed
abstract class Device with _$Device {
  factory Device({
    String? id,
    String? name,
    AppMode? mode,
    Dir? dir,
    int? floor,
    bool? isSave,
    @DateTimeConverter() DateTime? created,
  }) = _Device;

  factory Device.fromDocument(DocumentSnapshot doc) {
    final data = doc.data() as Map?;
    final id = data?['id'] as String?;
    final name = data?['name'] as String?;
    final _mode = data?['mode'] as String?;
    final mode = EnumToString.fromString(AppMode.values, _mode!);
    final _dir = data?['dir'] as String?;
    final dir = EnumToString.fromString(Dir.values, _dir!);
    final floor = data?['floor'] as int?;
    final isSave = data?['isSave'] as bool?;
    final _created = data?['created'] as Timestamp?;
    final created = _created?.toDate();

    return Device(
      id: id,
      name: name,
      mode: mode,
      dir: dir,
      floor: floor,
      isSave: isSave,
      created: created,
    );
  }

  factory Device.fromJson(Map<String, dynamic> json) => _$DeviceFromJson(json);
}

@freezed
abstract class DeviceBle with _$DeviceBle {
  @JsonSerializable(explicitToJson: true)
  factory DeviceBle({
    List<Ble>? data,
    @DateTimeConverter() DateTime? created,
  }) = _DeviceBle;

  factory DeviceBle.fromJson(Map<String, dynamic> json) =>
      _$DeviceBleFromJson(json);
}
