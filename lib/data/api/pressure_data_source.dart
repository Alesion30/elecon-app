import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:environment_sensors/environment_sensors.dart';

final pressureDataSourceProvider = Provider(
  (ref) => PressureDataSource(ref.read),
);

class PressureDataSource {
  PressureDataSource(this._reader);
  // ignore: unused_field
  final Reader _reader;

  final environmentSensors = EnvironmentSensors();

  Stream<double?> getPressureStream() async* {
    yield* environmentSensors.pressure;
  }

  Future<bool> getSensorAvailable() async {
    final pressureAvailable = await environmentSensors.getSensorAvailable(
      SensorType.Pressure,
    );
    return pressureAvailable;
  }
}
