import 'package:elecon/foundation/constants.dart';
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
    DateTime? created,
  }) = _Device;

  factory Device.fromJson(Map<String, dynamic> json) => _$DeviceFromJson(json);
}
