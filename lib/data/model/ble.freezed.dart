// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'ble.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Ble _$BleFromJson(Map<String, dynamic> json) {
  return _Ble.fromJson(json);
}

/// @nodoc
class _$BleTearOff {
  const _$BleTearOff();

  _Ble call({String? id, int? rssi}) {
    return _Ble(
      id: id,
      rssi: rssi,
    );
  }

  Ble fromJson(Map<String, Object> json) {
    return Ble.fromJson(json);
  }
}

/// @nodoc
const $Ble = _$BleTearOff();

/// @nodoc
mixin _$Ble {
  String? get id => throw _privateConstructorUsedError;
  int? get rssi => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BleCopyWith<Ble> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BleCopyWith<$Res> {
  factory $BleCopyWith(Ble value, $Res Function(Ble) then) =
      _$BleCopyWithImpl<$Res>;
  $Res call({String? id, int? rssi});
}

/// @nodoc
class _$BleCopyWithImpl<$Res> implements $BleCopyWith<$Res> {
  _$BleCopyWithImpl(this._value, this._then);

  final Ble _value;
  // ignore: unused_field
  final $Res Function(Ble) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? rssi = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      rssi: rssi == freezed
          ? _value.rssi
          : rssi // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$BleCopyWith<$Res> implements $BleCopyWith<$Res> {
  factory _$BleCopyWith(_Ble value, $Res Function(_Ble) then) =
      __$BleCopyWithImpl<$Res>;
  @override
  $Res call({String? id, int? rssi});
}

/// @nodoc
class __$BleCopyWithImpl<$Res> extends _$BleCopyWithImpl<$Res>
    implements _$BleCopyWith<$Res> {
  __$BleCopyWithImpl(_Ble _value, $Res Function(_Ble) _then)
      : super(_value, (v) => _then(v as _Ble));

  @override
  _Ble get _value => super._value as _Ble;

  @override
  $Res call({
    Object? id = freezed,
    Object? rssi = freezed,
  }) {
    return _then(_Ble(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      rssi: rssi == freezed
          ? _value.rssi
          : rssi // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Ble implements _Ble {
  _$_Ble({this.id, this.rssi});

  factory _$_Ble.fromJson(Map<String, dynamic> json) => _$_$_BleFromJson(json);

  @override
  final String? id;
  @override
  final int? rssi;

  @override
  String toString() {
    return 'Ble(id: $id, rssi: $rssi)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Ble &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.rssi, rssi) ||
                const DeepCollectionEquality().equals(other.rssi, rssi)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(rssi);

  @JsonKey(ignore: true)
  @override
  _$BleCopyWith<_Ble> get copyWith =>
      __$BleCopyWithImpl<_Ble>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_BleToJson(this);
  }
}

abstract class _Ble implements Ble {
  factory _Ble({String? id, int? rssi}) = _$_Ble;

  factory _Ble.fromJson(Map<String, dynamic> json) = _$_Ble.fromJson;

  @override
  String? get id => throw _privateConstructorUsedError;
  @override
  int? get rssi => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$BleCopyWith<_Ble> get copyWith => throw _privateConstructorUsedError;
}
