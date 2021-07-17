import 'package:elecon/data/model/floor.dart';

abstract class FloorDataSource {
  Future<List<Floor>> getData();
}
