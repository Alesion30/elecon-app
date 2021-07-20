// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'elevator.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Elevator _$_$_ElevatorFromJson(Map<String, dynamic> json) {
  return _$_Elevator(
    id: json['id'] as String?,
    people: json['people'] as int?,
    dir: const DirConverter().fromJson(json['dir'] as String?),
    created: const TimeStampConverter().fromJson(json['created'] as Timestamp?),
  );
}

Map<String, dynamic> _$_$_ElevatorToJson(_$_Elevator instance) =>
    <String, dynamic>{
      'id': instance.id,
      'people': instance.people,
      'dir': const DirConverter().toJson(instance.dir),
      'created': const TimeStampConverter().toJson(instance.created),
    };

_$_ElevatorLog _$_$_ElevatorLogFromJson(Map<String, dynamic> json) {
  return _$_ElevatorLog(
    data: (json['data'] as List<dynamic>?)
        ?.map((e) => ElevatorCount.fromJson(e as Map<String, dynamic>))
        .toList(),
    created: const TimeStampConverter().fromJson(json['created'] as Timestamp?),
  );
}

Map<String, dynamic> _$_$_ElevatorLogToJson(_$_ElevatorLog instance) =>
    <String, dynamic>{
      'data': instance.data?.map((e) => e.toJson()).toList(),
      'created': const TimeStampConverter().toJson(instance.created),
    };

_$_ElevatorCount _$_$_ElevatorCountFromJson(Map<String, dynamic> json) {
  return _$_ElevatorCount(
    people: json['people'] as int?,
    created: const TimeStampConverter().fromJson(json['created'] as Timestamp?),
  );
}

Map<String, dynamic> _$_$_ElevatorCountToJson(_$_ElevatorCount instance) =>
    <String, dynamic>{
      'people': instance.people,
      'created': const TimeStampConverter().toJson(instance.created),
    };
