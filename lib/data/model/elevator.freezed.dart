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
