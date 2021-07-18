// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ble.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Ble _$_$_BleFromJson(Map<String, dynamic> json) {
  return _$_Ble(
    id: json['id'] as String?,
    rssi: json['rssi'] as int?,
    created: const TimeStampConverter().fromJson(json['created'] as Timestamp?),
  );
}

Map<String, dynamic> _$_$_BleToJson(_$_Ble instance) => <String, dynamic>{
      'id': instance.id,
      'rssi': instance.rssi,
      'created': const TimeStampConverter().toJson(instance.created),
    };
