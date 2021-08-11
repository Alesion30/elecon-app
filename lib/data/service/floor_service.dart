import 'package:elecon/data/remote/fb_floor_data_source.dart';
import 'package:elecon/data/model/floor.dart';
import 'package:elecon/data/model/result.dart';
import 'package:elecon/foundation/constants.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final floorServiceProvider = Provider((ref) => FloorService(ref.read));

class FloorService {
  FloorService(this._reader);
  final Reader _reader;

  late final FbFloorDataSource _dataSource = _reader(floorDataSourceProvider);

  // constants
  final _constants = Constants.instance;

  Future<Result<List<Floor>>> getData() async {
    return Result.guardFuture(
      () async => _dataSource.getData(),
    );
  }

  Stream<List<Floor>> getDataRealtime() async* {
    yield* _dataSource.getDataStream();
  }

  Future<Result<void>> setCongestion(int congestion) async {
    final data = Floor(
      floor: _constants.floor,
      congestion: congestion,
      created: DateTime.now(),
    );
    return Result.guardFuture(
      () async => _dataSource.setCongestion(data),
    );
  }
}
