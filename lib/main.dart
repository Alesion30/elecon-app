import 'package:elecon/foundation/constants.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setEnabledSystemUIOverlays([]);

  // 環境変数
  final constants = Constants.instance;

  // アプリの向きを固定
  if (constants.isLandscape) {
    // 横向き
    await SystemChrome.setPreferredOrientations(
      [DeviceOrientation.landscapeRight, DeviceOrientation.landscapeLeft],
    );
  } else {
    // 縦向き
    await SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp],
    );
  }

  // Firebase
  await Firebase.initializeApp();

  // アプリを起動
  runApp(ProviderScope(child: App()));
}
