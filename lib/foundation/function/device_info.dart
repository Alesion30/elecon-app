// Dart imports:
import 'dart:io';

// Flutter imports:
import 'package:flutter/services.dart';

// Package imports:
import 'package:device_info/device_info.dart';

// デバイスIDを取得する
Future<String> getDeviceId() async {
  String? id;

  // デバッグモードかどうか
  var isDebug = false;
  assert(isDebug = true);

  if (!isDebug) {
    try {
      if (Platform.isAndroid) {
        final deviceInfo = DeviceInfoPlugin();
        final androidInfo = await deviceInfo.androidInfo;
        id = androidInfo.androidId;
      } else if (Platform.isIOS) {
        // final deviceInfo = DeviceInfoPlugin();
        // final iosDeviceInfo = await deviceInfo.iosInfo;
        // id = iosDeviceInfo.identifierForVendor;
        id = 'ios-id';
      }
    } on PlatformException {
      print('Failed to get platform version.');
    }
  }

  if (id == null || id == '') {
    id = 'sample';
  }

  return id;
}

// デバイス名を取得する
Future<String> getDeviceName() async {
  String? name;

  // デバッグモードかどうか
  var isDebug = false;
  assert(isDebug = true);

  if (!isDebug) {
    try {
      if (Platform.isAndroid) {
        final deviceInfo = DeviceInfoPlugin();
        final androidInfo = await deviceInfo.androidInfo;
        name = androidInfo.model;
      } else if (Platform.isIOS) {
        final deviceInfo = DeviceInfoPlugin();
        final iosDeviceInfo = await deviceInfo.iosInfo;
        name = iosDeviceInfo.utsname.machine;
      }
    } on PlatformException {
      print('Failed to get platform version.');
    }
  }

  if (name == null || name == '') {
    name = 'sample';
  }

  return name;
}
