import 'package:flutter_blue/flutter_blue.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final bleDataSourceProvider = Provider((ref) => BleDataSource(ref.read));

class BleDataSource {
  BleDataSource(this._reader);
  // ignore: unused_field
  final Reader _reader;

  late final FlutterBlue _flutterBlue = FlutterBlue.instance;

  // 接触確認アプリ「COCOA」のみのBLE信号を取得する
  Stream<List<ScanResult>> getCocoaStream({
    int interval = 5,
    int minRssi = -1000,
  }) async* {
    yield* Stream.periodic(Duration(seconds: interval), (_) async {
      var results = <ScanResult>[];
      await _flutterBlue.startScan(timeout: Duration(seconds: interval));
      _flutterBlue.scanResults.listen((item) => results = item);
      await _flutterBlue.stopScan();

      print('scan!!!');

      // 信号をフィルタリング
      results = results.where((result) {
        // 接触確認アプリ「COCOA」 ServiceUUID
        // https://blog.google/documents/58/Contact_Tracing_-_Bluetooth_Specification_v1.1_RYGZbKW.pdf
        // ignore: non_constant_identifier_names
        final COCOA_SERVICE_UUID = '0000fd6f';

        final serviceUuids = result.advertisementData.serviceUuids;
        final serviceUuidHeaders = serviceUuids
            .map(
              (uuid) => uuid.split('-')[0],
            )
            .toList();

        // 「COCOA」の信号かどうか
        final isCocoaSignal = serviceUuidHeaders.contains(COCOA_SERVICE_UUID);

        // 通信強度がminRssi以上の信号かどうか
        final isStrongSignal = result.rssi >= minRssi;

        if (isCocoaSignal && isStrongSignal) {
          return true;
        } else {
          return false;
        }
      }).toList();

      // 信号強度順にソート
      results.sort((a, b) => a.rssi < b.rssi ? 1 : -1);

      return results;
    }).asyncMap((event) async => await event);
  }
}
