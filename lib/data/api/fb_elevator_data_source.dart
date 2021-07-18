import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:elecon/data/model/converter.dart';
import 'package:elecon/data/model/elevator.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

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

  // エレベーターの状態を保存する
  Future<void> saveData(Elevator data, {required Dir dir}) async {
    final docId = dir.toString().split('.').last;
    await elevatorsCollection
        .doc(docId)
        .set(data.toJson(), SetOptions(merge: true));
  }
}
