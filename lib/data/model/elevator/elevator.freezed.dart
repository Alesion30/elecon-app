// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'elevator.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Elevator _$ElevatorFromJson(Map<String, dynamic> json) {
  return _Elevator.fromJson(json);
}

/// @nodoc
class _$ElevatorTearOff {
  const _$ElevatorTearOff();

  _Elevator call(
      {String? id,
      int? people,
      @DirConverter() Dir? dir,
      @TimeStampConverter() DateTime? created}) {
    return _Elevator(
      id: id,
      people: people,
      dir: dir,
      created: created,
    );
  }

  Elevator fromJson(Map<String, Object> json) {
    return Elevator.fromJson(json);
  }
}

/// @nodoc
const $Elevator = _$ElevatorTearOff();

/// @nodoc
mixin _$Elevator {
  String? get id => throw _privateConstructorUsedError;
  int? get people => throw _privateConstructorUsedError;
  @DirConverter()
  Dir? get dir => throw _privateConstructorUsedError;
  @TimeStampConverter()
  DateTime? get created => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ElevatorCopyWith<Elevator> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ElevatorCopyWith<$Res> {
  factory $ElevatorCopyWith(Elevator value, $Res Function(Elevator) then) =
      _$ElevatorCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      int? people,
      @DirConverter() Dir? dir,
      @TimeStampConverter() DateTime? created});
}

/// @nodoc
class _$ElevatorCopyWithImpl<$Res> implements $ElevatorCopyWith<$Res> {
  _$ElevatorCopyWithImpl(this._value, this._then);

  final Elevator _value;
  // ignore: unused_field
  final $Res Function(Elevator) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? people = freezed,
    Object? dir = freezed,
    Object? created = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      people: people == freezed
          ? _value.people
          : people // ignore: cast_nullable_to_non_nullable
              as int?,
      dir: dir == freezed
          ? _value.dir
          : dir // ignore: cast_nullable_to_non_nullable
              as Dir?,
      created: created == freezed
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$ElevatorCopyWith<$Res> implements $ElevatorCopyWith<$Res> {
  factory _$ElevatorCopyWith(_Elevator value, $Res Function(_Elevator) then) =
      __$ElevatorCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      int? people,
      @DirConverter() Dir? dir,
      @TimeStampConverter() DateTime? created});
}

/// @nodoc
class __$ElevatorCopyWithImpl<$Res> extends _$ElevatorCopyWithImpl<$Res>
    implements _$ElevatorCopyWith<$Res> {
  __$ElevatorCopyWithImpl(_Elevator _value, $Res Function(_Elevator) _then)
      : super(_value, (v) => _then(v as _Elevator));

  @override
  _Elevator get _value => super._value as _Elevator;

  @override
  $Res call({
    Object? id = freezed,
    Object? people = freezed,
    Object? dir = freezed,
    Object? created = freezed,
  }) {
    return _then(_Elevator(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      people: people == freezed
          ? _value.people
          : people // ignore: cast_nullable_to_non_nullable
              as int?,
      dir: dir == freezed
          ? _value.dir
          : dir // ignore: cast_nullable_to_non_nullable
              as Dir?,
      created: created == freezed
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Elevator implements _Elevator {
  _$_Elevator(
      {this.id,
      this.people,
      @DirConverter() this.dir,
      @TimeStampConverter() this.created});

  factory _$_Elevator.fromJson(Map<String, dynamic> json) =>
      _$_$_ElevatorFromJson(json);

  @override
  final String? id;
  @override
  final int? people;
  @override
  @DirConverter()
  final Dir? dir;
  @override
  @TimeStampConverter()
  final DateTime? created;

  @override
  String toString() {
    return 'Elevator(id: $id, people: $people, dir: $dir, created: $created)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Elevator &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.people, people) ||
                const DeepCollectionEquality().equals(other.people, people)) &&
            (identical(other.dir, dir) ||
                const DeepCollectionEquality().equals(other.dir, dir)) &&
            (identical(other.created, created) ||
                const DeepCollectionEquality().equals(other.created, created)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(people) ^
      const DeepCollectionEquality().hash(dir) ^
      const DeepCollectionEquality().hash(created);

  @JsonKey(ignore: true)
  @override
  _$ElevatorCopyWith<_Elevator> get copyWith =>
      __$ElevatorCopyWithImpl<_Elevator>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ElevatorToJson(this);
  }
}

abstract class _Elevator implements Elevator {
  factory _Elevator(
      {String? id,
      int? people,
      @DirConverter() Dir? dir,
      @TimeStampConverter() DateTime? created}) = _$_Elevator;

  factory _Elevator.fromJson(Map<String, dynamic> json) = _$_Elevator.fromJson;

  @override
  String? get id => throw _privateConstructorUsedError;
  @override
  int? get people => throw _privateConstructorUsedError;
  @override
  @DirConverter()
  Dir? get dir => throw _privateConstructorUsedError;
  @override
  @TimeStampConverter()
  DateTime? get created => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ElevatorCopyWith<_Elevator> get copyWith =>
      throw _privateConstructorUsedError;
}

ElevatorLog _$ElevatorLogFromJson(Map<String, dynamic> json) {
  return _ElevatorLog.fromJson(json);
}

/// @nodoc
class _$ElevatorLogTearOff {
  const _$ElevatorLogTearOff();

  _ElevatorLog call(
      {List<ElevatorCount>? data, @TimeStampConverter() DateTime? created}) {
    return _ElevatorLog(
      data: data,
      created: created,
    );
  }

  ElevatorLog fromJson(Map<String, Object> json) {
    return ElevatorLog.fromJson(json);
  }
}

/// @nodoc
const $ElevatorLog = _$ElevatorLogTearOff();

/// @nodoc
mixin _$ElevatorLog {
  List<ElevatorCount>? get data => throw _privateConstructorUsedError;
  @TimeStampConverter()
  DateTime? get created => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ElevatorLogCopyWith<ElevatorLog> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ElevatorLogCopyWith<$Res> {
  factory $ElevatorLogCopyWith(
          ElevatorLog value, $Res Function(ElevatorLog) then) =
      _$ElevatorLogCopyWithImpl<$Res>;
  $Res call(
      {List<ElevatorCount>? data, @TimeStampConverter() DateTime? created});
}

/// @nodoc
class _$ElevatorLogCopyWithImpl<$Res> implements $ElevatorLogCopyWith<$Res> {
  _$ElevatorLogCopyWithImpl(this._value, this._then);

  final ElevatorLog _value;
  // ignore: unused_field
  final $Res Function(ElevatorLog) _then;

  @override
  $Res call({
    Object? data = freezed,
    Object? created = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ElevatorCount>?,
      created: created == freezed
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$ElevatorLogCopyWith<$Res>
    implements $ElevatorLogCopyWith<$Res> {
  factory _$ElevatorLogCopyWith(
          _ElevatorLog value, $Res Function(_ElevatorLog) then) =
      __$ElevatorLogCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<ElevatorCount>? data, @TimeStampConverter() DateTime? created});
}

/// @nodoc
class __$ElevatorLogCopyWithImpl<$Res> extends _$ElevatorLogCopyWithImpl<$Res>
    implements _$ElevatorLogCopyWith<$Res> {
  __$ElevatorLogCopyWithImpl(
      _ElevatorLog _value, $Res Function(_ElevatorLog) _then)
      : super(_value, (v) => _then(v as _ElevatorLog));

  @override
  _ElevatorLog get _value => super._value as _ElevatorLog;

  @override
  $Res call({
    Object? data = freezed,
    Object? created = freezed,
  }) {
    return _then(_ElevatorLog(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ElevatorCount>?,
      created: created == freezed
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_ElevatorLog implements _ElevatorLog {
  _$_ElevatorLog({this.data, @TimeStampConverter() this.created});

  factory _$_ElevatorLog.fromJson(Map<String, dynamic> json) =>
      _$_$_ElevatorLogFromJson(json);

  @override
  final List<ElevatorCount>? data;
  @override
  @TimeStampConverter()
  final DateTime? created;

  @override
  String toString() {
    return 'ElevatorLog(data: $data, created: $created)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ElevatorLog &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.created, created) ||
                const DeepCollectionEquality().equals(other.created, created)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(created);

  @JsonKey(ignore: true)
  @override
  _$ElevatorLogCopyWith<_ElevatorLog> get copyWith =>
      __$ElevatorLogCopyWithImpl<_ElevatorLog>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ElevatorLogToJson(this);
  }
}

abstract class _ElevatorLog implements ElevatorLog {
  factory _ElevatorLog(
      {List<ElevatorCount>? data,
      @TimeStampConverter() DateTime? created}) = _$_ElevatorLog;

  factory _ElevatorLog.fromJson(Map<String, dynamic> json) =
      _$_ElevatorLog.fromJson;

  @override
  List<ElevatorCount>? get data => throw _privateConstructorUsedError;
  @override
  @TimeStampConverter()
  DateTime? get created => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ElevatorLogCopyWith<_ElevatorLog> get copyWith =>
      throw _privateConstructorUsedError;
}

ElevatorCount _$ElevatorCountFromJson(Map<String, dynamic> json) {
  return _ElevatorCount.fromJson(json);
}

/// @nodoc
class _$ElevatorCountTearOff {
  const _$ElevatorCountTearOff();

  _ElevatorCount call({int? people, @TimeStampConverter() DateTime? created}) {
    return _ElevatorCount(
      people: people,
      created: created,
    );
  }

  ElevatorCount fromJson(Map<String, Object> json) {
    return ElevatorCount.fromJson(json);
  }
}

/// @nodoc
const $ElevatorCount = _$ElevatorCountTearOff();

/// @nodoc
mixin _$ElevatorCount {
  int? get people => throw _privateConstructorUsedError;
  @TimeStampConverter()
  DateTime? get created => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ElevatorCountCopyWith<ElevatorCount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ElevatorCountCopyWith<$Res> {
  factory $ElevatorCountCopyWith(
          ElevatorCount value, $Res Function(ElevatorCount) then) =
      _$ElevatorCountCopyWithImpl<$Res>;
  $Res call({int? people, @TimeStampConverter() DateTime? created});
}

/// @nodoc
class _$ElevatorCountCopyWithImpl<$Res>
    implements $ElevatorCountCopyWith<$Res> {
  _$ElevatorCountCopyWithImpl(this._value, this._then);

  final ElevatorCount _value;
  // ignore: unused_field
  final $Res Function(ElevatorCount) _then;

  @override
  $Res call({
    Object? people = freezed,
    Object? created = freezed,
  }) {
    return _then(_value.copyWith(
      people: people == freezed
          ? _value.people
          : people // ignore: cast_nullable_to_non_nullable
              as int?,
      created: created == freezed
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$ElevatorCountCopyWith<$Res>
    implements $ElevatorCountCopyWith<$Res> {
  factory _$ElevatorCountCopyWith(
          _ElevatorCount value, $Res Function(_ElevatorCount) then) =
      __$ElevatorCountCopyWithImpl<$Res>;
  @override
  $Res call({int? people, @TimeStampConverter() DateTime? created});
}

/// @nodoc
class __$ElevatorCountCopyWithImpl<$Res>
    extends _$ElevatorCountCopyWithImpl<$Res>
    implements _$ElevatorCountCopyWith<$Res> {
  __$ElevatorCountCopyWithImpl(
      _ElevatorCount _value, $Res Function(_ElevatorCount) _then)
      : super(_value, (v) => _then(v as _ElevatorCount));

  @override
  _ElevatorCount get _value => super._value as _ElevatorCount;

  @override
  $Res call({
    Object? people = freezed,
    Object? created = freezed,
  }) {
    return _then(_ElevatorCount(
      people: people == freezed
          ? _value.people
          : people // ignore: cast_nullable_to_non_nullable
              as int?,
      created: created == freezed
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ElevatorCount implements _ElevatorCount {
  _$_ElevatorCount({this.people, @TimeStampConverter() this.created});

  factory _$_ElevatorCount.fromJson(Map<String, dynamic> json) =>
      _$_$_ElevatorCountFromJson(json);

  @override
  final int? people;
  @override
  @TimeStampConverter()
  final DateTime? created;

  @override
  String toString() {
    return 'ElevatorCount(people: $people, created: $created)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ElevatorCount &&
            (identical(other.people, people) ||
                const DeepCollectionEquality().equals(other.people, people)) &&
            (identical(other.created, created) ||
                const DeepCollectionEquality().equals(other.created, created)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(people) ^
      const DeepCollectionEquality().hash(created);

  @JsonKey(ignore: true)
  @override
  _$ElevatorCountCopyWith<_ElevatorCount> get copyWith =>
      __$ElevatorCountCopyWithImpl<_ElevatorCount>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ElevatorCountToJson(this);
  }
}

abstract class _ElevatorCount implements ElevatorCount {
  factory _ElevatorCount(
      {int? people,
      @TimeStampConverter() DateTime? created}) = _$_ElevatorCount;

  factory _ElevatorCount.fromJson(Map<String, dynamic> json) =
      _$_ElevatorCount.fromJson;

  @override
  int? get people => throw _privateConstructorUsedError;
  @override
  @TimeStampConverter()
  DateTime? get created => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ElevatorCountCopyWith<_ElevatorCount> get copyWith =>
      throw _privateConstructorUsedError;
}
