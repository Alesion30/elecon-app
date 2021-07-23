// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sensor.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Sensor _$_$_SensorFromJson(Map<String, dynamic> json) {
  return _$_Sensor(
    value: (json['value'] as num?)?.toDouble(),
    created: const TimeStampConverter().fromJson(json['created'] as Timestamp?),
  );
}

Map<String, dynamic> _$_$_SensorToJson(_$_Sensor instance) => <String, dynamic>{
      'value': instance.value,
      'created': const TimeStampConverter().toJson(instance.created),
    };
