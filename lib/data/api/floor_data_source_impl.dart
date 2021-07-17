import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:elecon/data/model/floor.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'floor_data_source.dart';

final floorsCollection = FirebaseFirestore.instance.collection('floors');

final floorDataSourceProvider = Provider((ref) => FloorDataSourceImpl(ref.read));

class FloorDataSourceImpl implements FloorDataSource {
  FloorDataSourceImpl(this._reader);
  final Reader _reader;

  @override
  Future<List<Floor>> getData() async {
    final snapshot = await floorsCollection
        .orderBy(
          'floor',
          descending: true,
        )
        .get();

    final docs = snapshot.docs;
    final floorList = docs
        .map(
          (doc) => Floor.fromDocument(doc),
        )
        .toList();
    return floorList;
  }
}
