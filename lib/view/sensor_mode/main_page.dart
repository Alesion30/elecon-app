import 'package:elecon/view/view_model/ble_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ScanModeMainPage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final bleViewModel = useProvider(bleViewModelProvider);

    // 初期化
    useEffect(() {
      bleViewModel.init();
      return () => bleViewModel.cancel();
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
                const Text('スキャン モード'),
                Text('デバイスID: ${bleViewModel.device?.id}'),
                Text('カウント数: ${bleViewModel.count}'),
                Text('${bleViewModel.isSave ? '保存する' : '保存しない'}'),
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
