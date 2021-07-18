import 'package:elecon/data/api/fb_device_data_source.dart';
import 'package:elecon/data/model/device.dart';
import 'package:elecon/data/model/result.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final deviceServiceProvider = Provider((ref) => DeviceService(ref.read));

class DeviceService {
  DeviceService(this._reader);
  final Reader _reader;

  late final FbDeviceDataSource _dataSource = _reader(deviceDataSourceProvider);

  Future<Result<void>> saveBasicData() async {
    return Result.guardFuture(
      () async => _dataSource.saveBasicData(),
    );
  }

  Future<Result<void>> saveBleData(DeviceBle data) async {
    return Result.guardFuture(
      () async => _dataSource.saveBleData(data),
    );
  }
}
