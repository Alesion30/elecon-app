// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'device.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Device _$DeviceFromJson(Map<String, dynamic> json) {
  return _Device.fromJson(json);
}

/// @nodoc
class _$DeviceTearOff {
  const _$DeviceTearOff();

  _Device call(
      {String? id,
      String? name,
      String? appInfo,
      @AppModeConverter() AppMode? mode,
      @DirConverter() Dir? dir,
      int? floor,
      bool? isSave,
      @TimeStampConverter() DateTime? created}) {
    return _Device(
      id: id,
      name: name,
      appInfo: appInfo,
      mode: mode,
      dir: dir,
      floor: floor,
      isSave: isSave,
      created: created,
    );
  }

  Device fromJson(Map<String, Object> json) {
    return Device.fromJson(json);
  }
}

/// @nodoc
const $Device = _$DeviceTearOff();

/// @nodoc
mixin _$Device {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get appInfo => throw _privateConstructorUsedError;
  @AppModeConverter()
  AppMode? get mode => throw _privateConstructorUsedError;
  @DirConverter()
  Dir? get dir => throw _privateConstructorUsedError;
  int? get floor => throw _privateConstructorUsedError;
  bool? get isSave => throw _privateConstructorUsedError;
  @TimeStampConverter()
  DateTime? get created => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeviceCopyWith<Device> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceCopyWith<$Res> {
  factory $DeviceCopyWith(Device value, $Res Function(Device) then) =
      _$DeviceCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      String? name,
      String? appInfo,
      @AppModeConverter() AppMode? mode,
      @DirConverter() Dir? dir,
      int? floor,
      bool? isSave,
      @TimeStampConverter() DateTime? created});
}

/// @nodoc
class _$DeviceCopyWithImpl<$Res> implements $DeviceCopyWith<$Res> {
  _$DeviceCopyWithImpl(this._value, this._then);

  final Device _value;
  // ignore: unused_field
  final $Res Function(Device) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? appInfo = freezed,
    Object? mode = freezed,
    Object? dir = freezed,
    Object? floor = freezed,
    Object? isSave = freezed,
    Object? created = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      appInfo: appInfo == freezed
          ? _value.appInfo
          : appInfo // ignore: cast_nullable_to_non_nullable
              as String?,
      mode: mode == freezed
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as AppMode?,
      dir: dir == freezed
          ? _value.dir
          : dir // ignore: cast_nullable_to_non_nullable
              as Dir?,
      floor: floor == freezed
          ? _value.floor
          : floor // ignore: cast_nullable_to_non_nullable
              as int?,
      isSave: isSave == freezed
          ? _value.isSave
          : isSave // ignore: cast_nullable_to_non_nullable
              as bool?,
      created: created == freezed
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$DeviceCopyWith<$Res> implements $DeviceCopyWith<$Res> {
  factory _$DeviceCopyWith(_Device value, $Res Function(_Device) then) =
      __$DeviceCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      String? name,
      String? appInfo,
      @AppModeConverter() AppMode? mode,
      @DirConverter() Dir? dir,
      int? floor,
      bool? isSave,
      @TimeStampConverter() DateTime? created});
}

/// @nodoc
class __$DeviceCopyWithImpl<$Res> extends _$DeviceCopyWithImpl<$Res>
    implements _$DeviceCopyWith<$Res> {
  __$DeviceCopyWithImpl(_Device _value, $Res Function(_Device) _then)
      : super(_value, (v) => _then(v as _Device));

  @override
  _Device get _value => super._value as _Device;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? appInfo = freezed,
    Object? mode = freezed,
    Object? dir = freezed,
    Object? floor = freezed,
    Object? isSave = freezed,
    Object? created = freezed,
  }) {
    return _then(_Device(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      appInfo: appInfo == freezed
          ? _value.appInfo
          : appInfo // ignore: cast_nullable_to_non_nullable
              as String?,
      mode: mode == freezed
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as AppMode?,
      dir: dir == freezed
          ? _value.dir
          : dir // ignore: cast_nullable_to_non_nullable
              as Dir?,
      floor: floor == freezed
          ? _value.floor
          : floor // ignore: cast_nullable_to_non_nullable
              as int?,
      isSave: isSave == freezed
          ? _value.isSave
          : isSave // ignore: cast_nullable_to_non_nullable
              as bool?,
      created: created == freezed
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Device implements _Device {
  _$_Device(
      {this.id,
      this.name,
      this.appInfo,
      @AppModeConverter() this.mode,
      @DirConverter() this.dir,
      this.floor,
      this.isSave,
      @TimeStampConverter() this.created});

  factory _$_Device.fromJson(Map<String, dynamic> json) =>
      _$_$_DeviceFromJson(json);

  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? appInfo;
  @override
  @AppModeConverter()
  final AppMode? mode;
  @override
  @DirConverter()
  final Dir? dir;
  @override
  final int? floor;
  @override
  final bool? isSave;
  @override
  @TimeStampConverter()
  final DateTime? created;

  @override
  String toString() {
    return 'Device(id: $id, name: $name, appInfo: $appInfo, mode: $mode, dir: $dir, floor: $floor, isSave: $isSave, created: $created)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Device &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.appInfo, appInfo) ||
                const DeepCollectionEquality()
                    .equals(other.appInfo, appInfo)) &&
            (identical(other.mode, mode) ||
                const DeepCollectionEquality().equals(other.mode, mode)) &&
            (identical(other.dir, dir) ||
                const DeepCollectionEquality().equals(other.dir, dir)) &&
            (identical(other.floor, floor) ||
                const DeepCollectionEquality().equals(other.floor, floor)) &&
            (identical(other.isSave, isSave) ||
                const DeepCollectionEquality().equals(other.isSave, isSave)) &&
            (identical(other.created, created) ||
                const DeepCollectionEquality().equals(other.created, created)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(appInfo) ^
      const DeepCollectionEquality().hash(mode) ^
      const DeepCollectionEquality().hash(dir) ^
      const DeepCollectionEquality().hash(floor) ^
      const DeepCollectionEquality().hash(isSave) ^
      const DeepCollectionEquality().hash(created);

  @JsonKey(ignore: true)
  @override
  _$DeviceCopyWith<_Device> get copyWith =>
      __$DeviceCopyWithImpl<_Device>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DeviceToJson(this);
  }
}

abstract class _Device implements Device {
  factory _Device(
      {String? id,
      String? name,
      String? appInfo,
      @AppModeConverter() AppMode? mode,
      @DirConverter() Dir? dir,
      int? floor,
      bool? isSave,
      @TimeStampConverter() DateTime? created}) = _$_Device;

  factory _Device.fromJson(Map<String, dynamic> json) = _$_Device.fromJson;

  @override
  String? get id => throw _privateConstructorUsedError;
  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  String? get appInfo => throw _privateConstructorUsedError;
  @override
  @AppModeConverter()
  AppMode? get mode => throw _privateConstructorUsedError;
  @override
  @DirConverter()
  Dir? get dir => throw _privateConstructorUsedError;
  @override
  int? get floor => throw _privateConstructorUsedError;
  @override
  bool? get isSave => throw _privateConstructorUsedError;
  @override
  @TimeStampConverter()
  DateTime? get created => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DeviceCopyWith<_Device> get copyWith => throw _privateConstructorUsedError;
}

DeviceBle _$DeviceBleFromJson(Map<String, dynamic> json) {
  return _DeviceBle.fromJson(json);
}

/// @nodoc
class _$DeviceBleTearOff {
  const _$DeviceBleTearOff();

  _DeviceBle call({List<Ble>? data, @TimeStampConverter() DateTime? created}) {
    return _DeviceBle(
      data: data,
      created: created,
    );
  }

  DeviceBle fromJson(Map<String, Object> json) {
    return DeviceBle.fromJson(json);
  }
}

/// @nodoc
const $DeviceBle = _$DeviceBleTearOff();

/// @nodoc
mixin _$DeviceBle {
  List<Ble>? get data => throw _privateConstructorUsedError;
  @TimeStampConverter()
  DateTime? get created => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeviceBleCopyWith<DeviceBle> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceBleCopyWith<$Res> {
  factory $DeviceBleCopyWith(DeviceBle value, $Res Function(DeviceBle) then) =
      _$DeviceBleCopyWithImpl<$Res>;
  $Res call({List<Ble>? data, @TimeStampConverter() DateTime? created});
}

/// @nodoc
class _$DeviceBleCopyWithImpl<$Res> implements $DeviceBleCopyWith<$Res> {
  _$DeviceBleCopyWithImpl(this._value, this._then);

  final DeviceBle _value;
  // ignore: unused_field
  final $Res Function(DeviceBle) _then;

  @override
  $Res call({
    Object? data = freezed,
    Object? created = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Ble>?,
      created: created == freezed
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$DeviceBleCopyWith<$Res> implements $DeviceBleCopyWith<$Res> {
  factory _$DeviceBleCopyWith(
          _DeviceBle value, $Res Function(_DeviceBle) then) =
      __$DeviceBleCopyWithImpl<$Res>;
  @override
  $Res call({List<Ble>? data, @TimeStampConverter() DateTime? created});
}

/// @nodoc
class __$DeviceBleCopyWithImpl<$Res> extends _$DeviceBleCopyWithImpl<$Res>
    implements _$DeviceBleCopyWith<$Res> {
  __$DeviceBleCopyWithImpl(_DeviceBle _value, $Res Function(_DeviceBle) _then)
      : super(_value, (v) => _then(v as _DeviceBle));

  @override
  _DeviceBle get _value => super._value as _DeviceBle;

  @override
  $Res call({
    Object? data = freezed,
    Object? created = freezed,
  }) {
    return _then(_DeviceBle(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Ble>?,
      created: created == freezed
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_DeviceBle implements _DeviceBle {
  _$_DeviceBle({this.data, @TimeStampConverter() this.created});

  factory _$_DeviceBle.fromJson(Map<String, dynamic> json) =>
      _$_$_DeviceBleFromJson(json);

  @override
  final List<Ble>? data;
  @override
  @TimeStampConverter()
  final DateTime? created;

  @override
  String toString() {
    return 'DeviceBle(data: $data, created: $created)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DeviceBle &&
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
  _$DeviceBleCopyWith<_DeviceBle> get copyWith =>
      __$DeviceBleCopyWithImpl<_DeviceBle>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DeviceBleToJson(this);
  }
}

abstract class _DeviceBle implements DeviceBle {
  factory _DeviceBle(
      {List<Ble>? data,
      @TimeStampConverter() DateTime? created}) = _$_DeviceBle;

  factory _DeviceBle.fromJson(Map<String, dynamic> json) =
      _$_DeviceBle.fromJson;

  @override
  List<Ble>? get data => throw _privateConstructorUsedError;
  @override
  @TimeStampConverter()
  DateTime? get created => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DeviceBleCopyWith<_DeviceBle> get copyWith =>
      throw _privateConstructorUsedError;
}

DevicePressure _$DevicePressureFromJson(Map<String, dynamic> json) {
  return _DevicePressure.fromJson(json);
}

/// @nodoc
class _$DevicePressureTearOff {
  const _$DevicePressureTearOff();

  _DevicePressure call(
      {List<Sensor>? data, @TimeStampConverter() DateTime? created}) {
    return _DevicePressure(
      data: data,
      created: created,
    );
  }

  DevicePressure fromJson(Map<String, Object> json) {
    return DevicePressure.fromJson(json);
  }
}

/// @nodoc
const $DevicePressure = _$DevicePressureTearOff();

/// @nodoc
mixin _$DevicePressure {
  List<Sensor>? get data => throw _privateConstructorUsedError;
  @TimeStampConverter()
  DateTime? get created => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DevicePressureCopyWith<DevicePressure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DevicePressureCopyWith<$Res> {
  factory $DevicePressureCopyWith(
          DevicePressure value, $Res Function(DevicePressure) then) =
      _$DevicePressureCopyWithImpl<$Res>;
  $Res call({List<Sensor>? data, @TimeStampConverter() DateTime? created});
}

/// @nodoc
class _$DevicePressureCopyWithImpl<$Res>
    implements $DevicePressureCopyWith<$Res> {
  _$DevicePressureCopyWithImpl(this._value, this._then);

  final DevicePressure _value;
  // ignore: unused_field
  final $Res Function(DevicePressure) _then;

  @override
  $Res call({
    Object? data = freezed,
    Object? created = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Sensor>?,
      created: created == freezed
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$DevicePressureCopyWith<$Res>
    implements $DevicePressureCopyWith<$Res> {
  factory _$DevicePressureCopyWith(
          _DevicePressure value, $Res Function(_DevicePressure) then) =
      __$DevicePressureCopyWithImpl<$Res>;
  @override
  $Res call({List<Sensor>? data, @TimeStampConverter() DateTime? created});
}

/// @nodoc
class __$DevicePressureCopyWithImpl<$Res>
    extends _$DevicePressureCopyWithImpl<$Res>
    implements _$DevicePressureCopyWith<$Res> {
  __$DevicePressureCopyWithImpl(
      _DevicePressure _value, $Res Function(_DevicePressure) _then)
      : super(_value, (v) => _then(v as _DevicePressure));

  @override
  _DevicePressure get _value => super._value as _DevicePressure;

  @override
  $Res call({
    Object? data = freezed,
    Object? created = freezed,
  }) {
    return _then(_DevicePressure(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Sensor>?,
      created: created == freezed
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_DevicePressure implements _DevicePressure {
  _$_DevicePressure({this.data, @TimeStampConverter() this.created});

  factory _$_DevicePressure.fromJson(Map<String, dynamic> json) =>
      _$_$_DevicePressureFromJson(json);

  @override
  final List<Sensor>? data;
  @override
  @TimeStampConverter()
  final DateTime? created;

  @override
  String toString() {
    return 'DevicePressure(data: $data, created: $created)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DevicePressure &&
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
  _$DevicePressureCopyWith<_DevicePressure> get copyWith =>
      __$DevicePressureCopyWithImpl<_DevicePressure>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DevicePressureToJson(this);
  }
}

abstract class _DevicePressure implements DevicePressure {
  factory _DevicePressure(
      {List<Sensor>? data,
      @TimeStampConverter() DateTime? created}) = _$_DevicePressure;

  factory _DevicePressure.fromJson(Map<String, dynamic> json) =
      _$_DevicePressure.fromJson;

  @override
  List<Sensor>? get data => throw _privateConstructorUsedError;
  @override
  @TimeStampConverter()
  DateTime? get created => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DevicePressureCopyWith<_DevicePressure> get copyWith =>
      throw _privateConstructorUsedError;
}
