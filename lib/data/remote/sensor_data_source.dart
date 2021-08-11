import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:environment_sensors/environment_sensors.dart';

export 'package:environment_sensors/environment_sensors.dart';

final sensorDataSourceProvider = Provider(
  (ref) => SensorDataSource(ref.read),
);

class SensorDataSource {
  SensorDataSource(this._reader);
  // ignore: unused_field
  final Reader _reader;

  final environmentSensors = EnvironmentSensors();

  Stream<double?> getPressureStream() async* {
    yield* environmentSensors.pressure;
  }

  Future<bool> getSensorAvailable(SensorType sensorType) async {
    final isAvailable =
        await environmentSensors.getSensorAvailable(sensorType);
    return isAvailable;
  }
}
