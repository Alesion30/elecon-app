// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:elecon/data/model/elevator/elevator.dart';
import 'package:elecon/data/model/result.dart';
import 'package:elecon/data/remote/fb_elevator_data_source.dart';
import 'package:elecon/foundation/constants.dart';
import 'package:elecon/foundation/function/device_info.dart';

final elevatorRepositoryProvider =
    Provider((ref) => ElevatorRepository(ref.read));

class ElevatorRepository {
  ElevatorRepository(this._reader);
  final Reader _reader;

  late final FbElevatorDataSource _dataSource =
      _reader(elevatorDataSourceProvider);

  // constants
  final _constants = Constants.instance;

  Stream<List<Elevator>> getDataRealtime() async* {
    yield* _dataSource.getDataStream();
  }

  Future<Result<void>> saveData(int? people) async {
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

  Future<Result<void>> saveLog(List<ElevatorCount> data) async {
    final log = ElevatorLog(
      data: data,
      created: DateTime.now(),
    );
    return Result.guardFuture(
      () async => _dataSource.saveLog(log, dir: _constants.dir!),
    );
  }
}
