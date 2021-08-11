import 'package:elecon/data/remote/ble_data_source.dart';
import 'package:elecon/data/model/ble/ble.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final bleServiceProvider = Provider((ref) => BleService(ref.read));

class BleService {
  BleService(this._reader);
  final Reader _reader;

  late final BleDataSource _dataSource = _reader(bleDataSourceProvider);

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
