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
