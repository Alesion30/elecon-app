import 'package:elecon/data/api/battery_data_source.dart';
import 'package:elecon/data/api/fb_device_data_source.dart';
import 'package:elecon/data/model/device.dart';
import 'package:elecon/data/model/result.dart';
import 'package:elecon/foundation/constants.dart';
import 'package:elecon/foundation/function/device_info.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final deviceServiceProvider = Provider((ref) => DeviceService(ref.read));

class DeviceService {
  DeviceService(this._reader);
  final Reader _reader;

  late final FbDeviceDataSource _dataSource = _reader(deviceDataSourceProvider);
  late final BatteryDataSource _batteryDataSource =
      _reader(batteryDataSourceProvider);

  // constants
  final _constants = Constants.instance;

  Stream<int?> getBatteryLevelStream() async* {
    yield* _batteryDataSource.getBatteryLevelStream();
  }

  Future<Result<void>> saveBatteryLevel(int? battery) async {
    return Result.guardFuture(
      () async => _dataSource.saveBatteryLevel(battery),
    );
  }

  Future<Result<Device>> getBasicData() async {
    return Result.guardFuture(
      () async => _dataSource.getBasicData(),
    );
  }

  Stream<Device> getBasicDataRealtime() async* {
    yield* _dataSource.getBasicDataStream();
  }

  Future<Result<void>> saveBasicData() async {
    final deviceId = await getDeviceId();
    final deviceName = await getDeviceName();
    final appMode = _constants.appMode;
    final dir = _constants.dir;
    final floor = _constants.floor;

    // アプリ情報
    var appInfo = '';
    if (appMode == AppMode.hall) {
      appInfo += 'ホールモード';
    } else if (appMode == AppMode.sensor) {
      appInfo += 'センサーモード';
    }
    if (dir == Dir.left) {
      appInfo += '/左';
    } else if (dir == Dir.right) {
      appInfo += '/右';
    }
    if (floor != null) {
      appInfo += '/${floor}F';
    }

    // FBのデータからisSaveを取得
    var isSave = false;
    try {
      final data = await _dataSource.getBasicData();
      isSave = data.isSave ?? false;
    } catch (e) {
      print(e);
    }

    final device = Device(
      id: deviceId,
      name: deviceName,
      appInfo: appInfo,
      mode: appMode,
      dir: dir,
      floor: floor,
      isSave: isSave,
      created: DateTime.now(),
    );

    return Result.guardFuture(
      () async => _dataSource.saveBasicData(device),
    );
  }

  Future<Result<void>> saveBleData(DeviceBle data) async {
    return Result.guardFuture(
      () async => _dataSource.saveBleData(data),
    );
  }
}
