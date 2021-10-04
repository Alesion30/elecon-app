// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:elecon/presentation/hook/use_effect.dart';
import 'package:elecon/presentation/view_model/ble_view_model.dart';
import 'package:elecon/presentation/view_model/device_view_model.dart';
import 'package:elecon/presentation/view_model/pressure_view_model.dart';

class ScanModeMainPage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final deviceViewModel = useProvider(deviceViewModelProvider);
    final bleViewModel = useProvider(bleViewModelProvider);
    final pressureViewModel = useProvider(pressureViewModelProvider);

    // 初期化
    useEffectSafety(() {
      bleViewModel.init();
      pressureViewModel.init();
      return () {
        bleViewModel.cancel();
        pressureViewModel.cancel();
      };
    }, []);

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('アプリ情報: ${deviceViewModel.device?.appInfo}'),
                Text('デバイスID: ${deviceViewModel.device?.id}'),
                Text('カウント数: ${bleViewModel.count}'),
                Text('気圧: ${pressureViewModel.pressure}[Pa]'),
                Text('${deviceViewModel.isSave ? '保存する' : '保存しない'}'),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(
                bottom: 30.0,
                left: 30.0,
                right: 10.0,
              ),
              child: Text(
                'データ: ${bleViewModel.bles}',
                style: const TextStyle(fontSize: 8.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
