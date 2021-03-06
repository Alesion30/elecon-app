// Package imports:
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:elecon/data/model/converter.dart';
import 'package:elecon/data/model/elevator/elevator.dart';
import 'package:elecon/foundation/extension/date_time.dart';

final elevatorDataSourceProvider = Provider(
  (ref) => FbElevatorDataSource(ref.read),
);

class FbElevatorDataSource {
  FbElevatorDataSource(this._reader);
  // ignore: unused_field
  final Reader _reader;

  // firebase
  late final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;
  late final elevatorsCollection = _firebaseFirestore.collection('elevators');

  // エレベーターの状態を取得する
  Stream<List<Elevator>> getDataStream() async* {
    final snapshots = elevatorsCollection.snapshots();
    final elevators = snapshots.asyncMap((snapshot) {
      final docs = snapshot.docs;
      final elevators = docs.map((doc) => Elevator.fromDocument(doc)).toList();
      return elevators;
    });
    yield* elevators;
  }

  // エレベーターの状態を保存する
  Future<void> saveData(Elevator data, {required Dir dir}) async {
    final docId = dir.toString().split('.').last;
    await elevatorsCollection.doc(docId).set(data.toJson());
  }

  // エレベーターの状態のログを保存する
  Future<void> saveLog(ElevatorLog data, {required Dir dir}) async {
    final docId = dir.toString().split('.').last;
    await elevatorsCollection
        .doc(docId)
        .collection('log')
        .doc(DateTime.now().formatYYYYMMddHHmm())
        .set(data.toJson());
  }
}
