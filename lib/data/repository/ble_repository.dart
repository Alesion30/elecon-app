// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:elecon/data/model/ble/ble.dart';
import 'package:elecon/data/model/result.dart';
import 'package:elecon/data/remote/ble_data_source.dart';

final bleRepositoryProvider = Provider((ref) => BleRepository(ref.read));

class BleRepository {
  BleRepository(this._reader);
  final Reader _reader;

  late final BleDataSource _dataSource = _reader(bleDataSourceProvider);

  Future<Result<void>> startScan() async {
    return Result.guardFuture(
      () async => _dataSource.startScan(),
    );
  }

  Future<Result<void>> stopScan() async {
    return Result.guardFuture(
      () async => _dataSource.stopScan(),
    );
  }

  Stream<bool> restartStream() async* {
    yield* _dataSource.getIsScaning();
  }

  Stream<List<Ble>> getDataRealtime() async* {
    final stream = _dataSource.getCocoaStream();
    yield* stream.asyncMap((scanResult) {
      return scanResult.map(
        (scanResult) {
          final id = scanResult.device.id.toString();
          final rssi = scanResult.rssi;
          final now = DateTime.now();
          return Ble(
            id: id,
            rssi: rssi,
            created: now,
          );
        },
      ).toList();
    }).asyncMap((event) => event);
  }
}
