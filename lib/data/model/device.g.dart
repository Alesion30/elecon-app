// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Device _$_$_DeviceFromJson(Map<String, dynamic> json) {
  return _$_Device(
    id: json['id'] as String?,
    name: json['name'] as String?,
    mode: _$enumDecodeNullable(_$AppModeEnumMap, json['mode']),
    dir: _$enumDecodeNullable(_$DirEnumMap, json['dir']),
    floor: json['floor'] as int?,
    created: json['created'] == null
        ? null
        : DateTime.parse(json['created'] as String),
  );
}

Map<String, dynamic> _$_$_DeviceToJson(_$_Device instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'mode': _$AppModeEnumMap[instance.mode],
      'dir': _$DirEnumMap[instance.dir],
      'floor': instance.floor,
      'created': instance.created?.toIso8601String(),
    };

K _$enumDecode<K, V>(
  Map<K, V> enumValues,
  Object? source, {
  K? unknownValue,
}) {
  if (source == null) {
    throw ArgumentError(
      'A value must be provided. Supported values: '
      '${enumValues.values.join(', ')}',
    );
  }

  return enumValues.entries.singleWhere(
    (e) => e.value == source,
    orElse: () {
      if (unknownValue == null) {
        throw ArgumentError(
          '`$source` is not one of the supported values: '
          '${enumValues.values.join(', ')}',
        );
      }
      return MapEntry(unknownValue, enumValues.values.first);
    },
  ).key;
}

K? _$enumDecodeNullable<K, V>(
  Map<K, V> enumValues,
  dynamic source, {
  K? unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<K, V>(enumValues, source, unknownValue: unknownValue);
}

const _$AppModeEnumMap = {
  AppMode.hall: 'hall',
  AppMode.sensor: 'sensor',
};

const _$DirEnumMap = {
  Dir.left: 'left',
  Dir.right: 'right',
};

_$_DeviceBle _$_$_DeviceBleFromJson(Map<String, dynamic> json) {
  return _$_DeviceBle(
    data: (json['data'] as List<dynamic>?)
        ?.map((e) => Ble.fromJson(e as Map<String, dynamic>))
        .toList(),
    created: json['created'] == null
        ? null
        : DateTime.parse(json['created'] as String),
  );
}

Map<String, dynamic> _$_$_DeviceBleToJson(_$_DeviceBle instance) =>
    <String, dynamic>{
      'data': instance.data,
      'created': instance.created?.toIso8601String(),
    };
