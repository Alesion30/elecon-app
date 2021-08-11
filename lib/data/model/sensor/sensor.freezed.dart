// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'sensor.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Sensor _$SensorFromJson(Map<String, dynamic> json) {
  return _Sensor.fromJson(json);
}

/// @nodoc
class _$SensorTearOff {
  const _$SensorTearOff();

  _Sensor call({double? value, @TimeStampConverter() DateTime? created}) {
    return _Sensor(
      value: value,
      created: created,
    );
  }

  Sensor fromJson(Map<String, Object> json) {
    return Sensor.fromJson(json);
  }
}

/// @nodoc
const $Sensor = _$SensorTearOff();

/// @nodoc
mixin _$Sensor {
  double? get value => throw _privateConstructorUsedError;
  @TimeStampConverter()
  DateTime? get created => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SensorCopyWith<Sensor> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SensorCopyWith<$Res> {
  factory $SensorCopyWith(Sensor value, $Res Function(Sensor) then) =
      _$SensorCopyWithImpl<$Res>;
  $Res call({double? value, @TimeStampConverter() DateTime? created});
}

/// @nodoc
class _$SensorCopyWithImpl<$Res> implements $SensorCopyWith<$Res> {
  _$SensorCopyWithImpl(this._value, this._then);

  final Sensor _value;
  // ignore: unused_field
  final $Res Function(Sensor) _then;

  @override
  $Res call({
    Object? value = freezed,
    Object? created = freezed,
  }) {
    return _then(_value.copyWith(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double?,
      created: created == freezed
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$SensorCopyWith<$Res> implements $SensorCopyWith<$Res> {
  factory _$SensorCopyWith(_Sensor value, $Res Function(_Sensor) then) =
      __$SensorCopyWithImpl<$Res>;
  @override
  $Res call({double? value, @TimeStampConverter() DateTime? created});
}

/// @nodoc
class __$SensorCopyWithImpl<$Res> extends _$SensorCopyWithImpl<$Res>
    implements _$SensorCopyWith<$Res> {
  __$SensorCopyWithImpl(_Sensor _value, $Res Function(_Sensor) _then)
      : super(_value, (v) => _then(v as _Sensor));

  @override
  _Sensor get _value => super._value as _Sensor;

  @override
  $Res call({
    Object? value = freezed,
    Object? created = freezed,
  }) {
    return _then(_Sensor(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double?,
      created: created == freezed
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Sensor implements _Sensor {
  _$_Sensor({this.value, @TimeStampConverter() this.created});

  factory _$_Sensor.fromJson(Map<String, dynamic> json) =>
      _$_$_SensorFromJson(json);

  @override
  final double? value;
  @override
  @TimeStampConverter()
  final DateTime? created;

  @override
  String toString() {
    return 'Sensor(value: $value, created: $created)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Sensor &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)) &&
            (identical(other.created, created) ||
                const DeepCollectionEquality().equals(other.created, created)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(value) ^
      const DeepCollectionEquality().hash(created);

  @JsonKey(ignore: true)
  @override
  _$SensorCopyWith<_Sensor> get copyWith =>
      __$SensorCopyWithImpl<_Sensor>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SensorToJson(this);
  }
}

abstract class _Sensor implements Sensor {
  factory _Sensor({double? value, @TimeStampConverter() DateTime? created}) =
      _$_Sensor;

  factory _Sensor.fromJson(Map<String, dynamic> json) = _$_Sensor.fromJson;

  @override
  double? get value => throw _privateConstructorUsedError;
  @override
  @TimeStampConverter()
  DateTime? get created => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SensorCopyWith<_Sensor> get copyWith => throw _privateConstructorUsedError;
}
