// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'floor.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Floor _$_$_FloorFromJson(Map<String, dynamic> json) {
  return _$_Floor(
    floor: json['floor'] as int?,
    congestion: json['congestion'] as int?,
    created: const TimeStampConverter().fromJson(json['created'] as Timestamp?),
  );
}

Map<String, dynamic> _$_$_FloorToJson(_$_Floor instance) => <String, dynamic>{
      'floor': instance.floor,
      'congestion': instance.congestion,
      'created': const TimeStampConverter().toJson(instance.created),
    };
