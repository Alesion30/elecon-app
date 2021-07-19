import 'package:elecon/data/api/fb_elevator_data_source.dart';
import 'package:elecon/data/model/elevator.dart';
import 'package:elecon/data/model/result.dart';
import 'package:elecon/foundation/constants.dart';
import 'package:elecon/foundation/function/device_info.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final elevatorServiceProvider = Provider((ref) => ElevatorService(ref.read));

class ElevatorService {
  ElevatorService(this._reader);
  final Reader _reader;

  late final FbElevatorDataSource _dataSource =
      _reader(elevatorDataSourceProvider);

  // constants
  final _constants = Constants.instance;

  Stream<List<Elevator>> getDataRealtime() async* {
    yield* _dataSource.getDataStream();
  }

  Future<Result<void>> saveData(int people) async {
    final deviceId = await getDeviceId();
    final data = Elevator(
      id: deviceId,
      people: people,
      dir: _constants.dir!,
      created: DateTime.now(),
    );
    return Result.guardFuture(
      () async => _dataSource.saveData(data, dir: _constants.dir!),
    );
  }
}
