import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:elecon/data/model/device.dart';
import 'package:elecon/foundation/constants.dart';
import 'package:elecon/foundation/function/device_info.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:elecon/foundation/extension/date_time.dart';

final deviceDataSourceProvider =
    Provider((ref) => FbDeviceDataSource(ref.read));

class FbDeviceDataSource {
  FbDeviceDataSource(this._reader);
  final Reader _reader;

  // constants
  final constants = Constants.instance;

  // firebase
  late final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;
  late final devicesCollection = _firebaseFirestore.collection('devices');

  // デバイスの基本情報を保存
  Future<void> saveBasicData() async {
    final deviceId = await getDeviceId();
    final deviceName = await getDeviceName();
    final appMode = constants.appMode;
    final dir = constants.dir;
    final floor = constants.floor;

    final device = Device(
      id: deviceId,
      name: deviceName,
      mode: appMode,
      dir: dir,
      floor: floor,
      created: DateTime.now(),
    );

    // デバイス情報を保存
    await devicesCollection.doc(deviceId).set(
          device.toJson(),
          SetOptions(
            merge: true,
          ),
        );
  }

  // センサから取得したBLEのデータを保存
  Future<void> saveBleData(DeviceBle deviceData) async {
    final deviceId = await getDeviceId();
    final docId = DateTime.now().formatYYYYMMddHHmm();

    // TODO: ネストされた値を.toJsonを呼び出す処理をモデル側に持たせたい
    final data = deviceData.data!.map((v) => v.toJson()).toList();
    final created = deviceData.created;
    await devicesCollection.doc(deviceId).collection('ble').doc(docId).set({
      'data': data,
      'created': created,
    });
  }
}
