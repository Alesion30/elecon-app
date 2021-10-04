// Package imports:
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:elecon/data/app_error.dart';
import 'package:elecon/data/model/floor/floor.dart';
import 'package:elecon/foundation/extension/date_time.dart';

final floorDataSourceProvider = Provider(
  (ref) => FbFloorDataSource(ref.read),
);

class FbFloorDataSource {
  FbFloorDataSource(this._reader);
  // ignore: unused_field
  final Reader _reader;

  // firebase
  late final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;
  late final floorsCollection = _firebaseFirestore.collection('floors');

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

  Stream<List<Floor>> getDataStream() async* {
    final snapshots = floorsCollection
        .orderBy(
          'floor',
          descending: true,
        )
        .snapshots();
    final floorList = snapshots.asyncMap((snapshot) {
      final docs = snapshot.docs;
      final floorList = docs.map((doc) => Floor.fromDocument(doc)).toList();
      return floorList;
    });
    yield* floorList;
  }

  Future<void> setCongestion(Floor data) async {
    final floor = data.floor;
    if (floor == null) {
      throw AppError(Exception('階数がありません'));
    }

    await floorsCollection.doc('$floor').set(data.toJson());
    await floorsCollection
        .doc('$floor')
        .collection('log')
        .doc(DateTime.now().formatYYYYMMddHHmmss())
        .set(data.toJson());
  }
}
