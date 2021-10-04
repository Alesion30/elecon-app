// Flutter imports:
import 'package:flutter/services.dart';

// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';

final batteryDataSourceProvider = Provider(
  (ref) => BatteryDataSource(ref.read),
);

class BatteryDataSource {
  BatteryDataSource(this._reader);
  // ignore: unused_field
  final Reader _reader;

  late final platform = const MethodChannel('elecon.flutter.dev/android');

  Future<int?> getBatteryLevel() async {
    final battery = await platform.invokeMethod('getBatteryLevel') as int?;
    return battery;
  }

  Stream<int?> getBatteryLevelStream() async* {
    yield* Stream.periodic(const Duration(seconds: 600), (_) async {
      final battery = await getBatteryLevel();
      return battery;
    }).asyncMap((event) async => await event);
  }
}
