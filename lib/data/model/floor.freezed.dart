// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'floor.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Floor _$FloorFromJson(Map<String, dynamic> json) {
  return _Floor.fromJson(json);
}

/// @nodoc
class _$FloorTearOff {
  const _$FloorTearOff();

  _Floor call(
      {int? floor, int? congestion, @TimeStampConverter() DateTime? created}) {
    return _Floor(
      floor: floor,
      congestion: congestion,
      created: created,
    );
  }

  Floor fromJson(Map<String, Object> json) {
    return Floor.fromJson(json);
  }
}

/// @nodoc
const $Floor = _$FloorTearOff();

/// @nodoc
mixin _$Floor {
  int? get floor => throw _privateConstructorUsedError;
  int? get congestion => throw _privateConstructorUsedError;
  @TimeStampConverter()
  DateTime? get created => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FloorCopyWith<Floor> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FloorCopyWith<$Res> {
  factory $FloorCopyWith(Floor value, $Res Function(Floor) then) =
      _$FloorCopyWithImpl<$Res>;
  $Res call(
      {int? floor, int? congestion, @TimeStampConverter() DateTime? created});
}

/// @nodoc
class _$FloorCopyWithImpl<$Res> implements $FloorCopyWith<$Res> {
  _$FloorCopyWithImpl(this._value, this._then);

  final Floor _value;
  // ignore: unused_field
  final $Res Function(Floor) _then;

  @override
  $Res call({
    Object? floor = freezed,
    Object? congestion = freezed,
    Object? created = freezed,
  }) {
    return _then(_value.copyWith(
      floor: floor == freezed
          ? _value.floor
          : floor // ignore: cast_nullable_to_non_nullable
              as int?,
      congestion: congestion == freezed
          ? _value.congestion
          : congestion // ignore: cast_nullable_to_non_nullable
              as int?,
      created: created == freezed
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$FloorCopyWith<$Res> implements $FloorCopyWith<$Res> {
  factory _$FloorCopyWith(_Floor value, $Res Function(_Floor) then) =
      __$FloorCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? floor, int? congestion, @TimeStampConverter() DateTime? created});
}

/// @nodoc
class __$FloorCopyWithImpl<$Res> extends _$FloorCopyWithImpl<$Res>
    implements _$FloorCopyWith<$Res> {
  __$FloorCopyWithImpl(_Floor _value, $Res Function(_Floor) _then)
      : super(_value, (v) => _then(v as _Floor));

  @override
  _Floor get _value => super._value as _Floor;

  @override
  $Res call({
    Object? floor = freezed,
    Object? congestion = freezed,
    Object? created = freezed,
  }) {
    return _then(_Floor(
      floor: floor == freezed
          ? _value.floor
          : floor // ignore: cast_nullable_to_non_nullable
              as int?,
      congestion: congestion == freezed
          ? _value.congestion
          : congestion // ignore: cast_nullable_to_non_nullable
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
class _$_Floor implements _Floor {
  _$_Floor({this.floor, this.congestion, @TimeStampConverter() this.created});

  factory _$_Floor.fromJson(Map<String, dynamic> json) =>
      _$_$_FloorFromJson(json);

  @override
  final int? floor;
  @override
  final int? congestion;
  @override
  @TimeStampConverter()
  final DateTime? created;

  @override
  String toString() {
    return 'Floor(floor: $floor, congestion: $congestion, created: $created)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Floor &&
            (identical(other.floor, floor) ||
                const DeepCollectionEquality().equals(other.floor, floor)) &&
            (identical(other.congestion, congestion) ||
                const DeepCollectionEquality()
                    .equals(other.congestion, congestion)) &&
            (identical(other.created, created) ||
                const DeepCollectionEquality().equals(other.created, created)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(floor) ^
      const DeepCollectionEquality().hash(congestion) ^
      const DeepCollectionEquality().hash(created);

  @JsonKey(ignore: true)
  @override
  _$FloorCopyWith<_Floor> get copyWith =>
      __$FloorCopyWithImpl<_Floor>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_FloorToJson(this);
  }
}

abstract class _Floor implements Floor {
  factory _Floor(
      {int? floor,
      int? congestion,
      @TimeStampConverter() DateTime? created}) = _$_Floor;

  factory _Floor.fromJson(Map<String, dynamic> json) = _$_Floor.fromJson;

  @override
  int? get floor => throw _privateConstructorUsedError;
  @override
  int? get congestion => throw _privateConstructorUsedError;
  @override
  @TimeStampConverter()
  DateTime? get created => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FloorCopyWith<_Floor> get copyWith => throw _privateConstructorUsedError;
}
