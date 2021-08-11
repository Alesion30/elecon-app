import 'package:elecon/data/remote/sensor_data_source.dart';
import 'package:elecon/data/model/result.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final pressureServiceProvider = Provider((ref) => PressureService(ref.read));

class PressureService {
  PressureService(this._reader);
  final Reader _reader;

  late final SensorDataSource _dataStore = _reader(sensorDataSourceProvider);

  Future<Result<bool>> getPressureSensorAvailable() async {
    return Result.guardFuture(
      () async => _dataStore.getSensorAvailable(SensorType.Pressure),
    );
  }

  Stream<double?> getPressureStream() async* {
    yield* _dataStore.getPressureStream();
  }
}
