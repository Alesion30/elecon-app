import 'package:elecon/data/api/floor_data_source.dart';
import 'package:elecon/data/model/floor.dart';
import 'package:elecon/data/model/result.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final floorServiceProvider = Provider((ref) => FloorService(ref.read));

class FloorService {
  FloorService(this._reader);
  final Reader _reader;

  late final FloorDataSource _dataSource = _reader(floorDataSourceProvider);

  Future<Result<List<Floor>>> getData() async {
    return Result.guardFuture(
      () async => _dataSource.getData(),
    );
  }

  Stream<List<Floor>> getDataRealtime() async* {
    yield* _dataSource.getDataRealtime();
  }
}
