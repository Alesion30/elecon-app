import 'package:elecon/view/sensor_mode/ble_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ScanModeMainPage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final viewModel = useProvider(bleViewModelProvider);

    useEffect(() {
      viewModel.fetchDataRealtime();
      return () => viewModel.cancel();
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
                Text('カウント数: ${viewModel.count}'),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(
                bottom: 30.0,
                left: 30.0,
                right: 10.0,
              ),
              child: Text(
                'データ: ${viewModel.bles}',
                style: const TextStyle(fontSize: 8.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
