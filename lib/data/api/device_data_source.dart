import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:elecon/data/model/device.dart';
import 'package:elecon/foundation/constants.dart';
import 'package:elecon/foundation/function/device_info.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final deviceDataSourceProvider = Provider((ref) => DeviceDataSource(ref.read));

class DeviceDataSource {
  DeviceDataSource(this._reader);
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
}
