import 'package:elecon/data/model/converter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sensor.freezed.dart';
part 'sensor.g.dart';

@freezed
class Sensor with _$Sensor {
  factory Sensor({
    double? value,
    @TimeStampConverter() DateTime? created,
  }) = _Sensor;

  factory Sensor.fromJson(Map<String, dynamic> json) => _$SensorFromJson(json);
}
