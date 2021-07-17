import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setEnabledSystemUIOverlays([]);

  // アプリの向きを固定
  await SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp],
  );

  // アプリを起動
  runApp(ProviderScope(child: App()));
}
