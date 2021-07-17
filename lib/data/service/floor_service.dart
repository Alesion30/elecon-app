import 'package:elecon/data/model/floor.dart';
import 'package:elecon/data/model/result.dart';

abstract class FloorService {
  Future<Result<List<Floor>>> getData();
}
