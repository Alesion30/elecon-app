import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:elecon/data/model/device.dart';
import 'package:elecon/foundation/function/device_info.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:elecon/foundation/extension/date_time.dart';

final deviceDataSourceProvider = Provider(
  (ref) => FbDeviceDataSource(ref.read),
);

class FbDeviceDataSource {
  FbDeviceDataSource(this._reader);
  // ignore: unused_field
  final Reader _reader;

  // firebase
  late final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;
  late final devicesCollection = _firebaseFirestore.collection('devices');

  // デバイスの基本情報を取得
  Future<Device> getBasicData() async {
    final deviceId = await getDeviceId();
    final doc = await devicesCollection.doc(deviceId).get();
    final data = Device.fromDocument(doc);
    return data;
  }

  // デバイスの基本情報を取得（リアルタイム）
  Stream<Device> getBasicDataStream() async* {
    final deviceId = await getDeviceId();
    final snapshots = devicesCollection.doc(deviceId).snapshots();
    final data = snapshots.asyncMap((doc) => Device.fromDocument(doc));
    yield* data;
  }

  // デバイスの基本情報を保存
  Future<void> saveBasicData(Device device) async {
    final deviceId = await getDeviceId();

    // デバイス情報を保存
    await devicesCollection.doc(deviceId).set(
          device.toJson(),
          SetOptions(merge: true),
        );
  }

  // センサから取得したBLEのデータを保存
  Future<void> saveBleData(DeviceBle deviceData) async {
    final deviceId = await getDeviceId();
    final docId = DateTime.now().formatYYYYMMddHHmm();
    await devicesCollection
        .doc(deviceId)
        .collection('ble')
        .doc(docId)
        .set(deviceData.toJson());
  }
}