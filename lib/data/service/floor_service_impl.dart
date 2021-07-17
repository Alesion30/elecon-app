import 'package:elecon/data/api/floor_data_source.dart';
import 'package:elecon/data/api/floor_data_source_impl.dart';
import 'package:elecon/data/model/floor.dart';
import 'package:elecon/data/model/result.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'floor_service.dart';

final floorServiceProvider = Provider((ref) => FloorServiceImpl(ref.read));

class FloorServiceImpl implements FloorService {
  FloorServiceImpl(this._reader);
  final Reader _reader;

  late final FloorDataSource _dataSource = _reader(floorDataSourceProvider);

  @override
  Future<Result<List<Floor>>> getData() async {
    return Result.guardFuture(
      () async => _dataSource.getData(),
    );
  }
}
