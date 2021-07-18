import 'package:elecon/view/sensor_mode/ble_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ScanModeMainPage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final viewModel = context.read(bleViewModelProvider);

    useEffect(() {
      print('fetchDataRealtime!!');
      viewModel.fetchDataRealtime();

      return () => viewModel.cancel();
    }, []);

    return const Scaffold(
      body: Center(
        child: Text('スキャン モード'),
      ),
    );
  }
}
