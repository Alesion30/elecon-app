// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Device _$_$_DeviceFromJson(Map<String, dynamic> json) {
  return _$_Device(
    id: json['id'] as String?,
    name: json['name'] as String?,
    mode: const AppModeConverter().fromJson(json['mode'] as String?),
    dir: const DirConverter().fromJson(json['dir'] as String?),
    floor: json['floor'] as int?,
    isSave: json['isSave'] as bool?,
    created: const TimeStampConverter().fromJson(json['created'] as Timestamp?),
  );
}

Map<String, dynamic> _$_$_DeviceToJson(_$_Device instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'mode': const AppModeConverter().toJson(instance.mode),
      'dir': const DirConverter().toJson(instance.dir),
      'floor': instance.floor,
      'isSave': instance.isSave,
      'created': const TimeStampConverter().toJson(instance.created),
    };

_$_DeviceBle _$_$_DeviceBleFromJson(Map<String, dynamic> json) {
  return _$_DeviceBle(
    data: (json['data'] as List<dynamic>?)
        ?.map((e) => Ble.fromJson(e as Map<String, dynamic>))
        .toList(),
    created: const TimeStampConverter().fromJson(json['created'] as Timestamp?),
  );
}

Map<String, dynamic> _$_$_DeviceBleToJson(_$_DeviceBle instance) =>
    <String, dynamic>{
      'data': instance.data?.map((e) => e.toJson()).toList(),
      'created': const TimeStampConverter().toJson(instance.created),
    };
