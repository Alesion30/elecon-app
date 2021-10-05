// Package imports:
import 'package:flutter_blue/flutter_blue.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final bleDataSourceProvider = Provider(
  (ref) => BleDataSource(ref.read),
);

class BleDataSource {
  BleDataSource(this._reader);
  // ignore: unused_field
  final Reader _reader;

  late final FlutterBlue _flutterBlue = FlutterBlue.instance;

  // スキャンを開始する（タイムアウト: 10分）
  Future<void> startScan() => _flutterBlue.startScan(
        timeout: const Duration(minutes: 10),
        allowDuplicates: true,
      );

  // スキャンを終了する
  Future<void> stopScan() => _flutterBlue.stopScan();

  // スキャン中かどうかを取得する
  Stream<bool> getIsScaning() async* {
    yield* Stream.periodic(const Duration(seconds: 10), (_) async {
      final isScanning = await _flutterBlue.isScanning.first;
      return isScanning;
    }).asyncMap((event) => event);
  }

  // 接触確認アプリ「COCOA」のみのBLE信号を取得する
  Stream<List<ScanResult>> getCocoaStream({
    int minRssi = -1000,
  }) async* {
    yield* _flutterBlue.scanResults.asyncMap((scanResults) async {
      // 信号をフィルタリング
      final filteredScanResult = scanResults.where((result) {
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
      filteredScanResult.sort((a, b) => a.rssi < b.rssi ? 1 : -1);

      return filteredScanResult;
    });
  }
}
