import 'package:elecon/foundation/constants.dart';
import 'package:elecon/view/hook/use_router.dart';
import 'package:elecon/view/routes/app_route.gr.dart';
import 'package:elecon/view/view_model/device_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:permission_handler/permission_handler.dart';

class SplashPage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final router = useRouter();
    final appMode = Constants.instance.appMode;
    final viewModel = useProvider(deviceViewModelProvider);

    Future<void> run() async {
      print('App Start!!');

      // 権限要求
      var status = await Permission.bluetooth.status;
      if (status.isDenied ||
          status.isRestricted ||
          status.isPermanentlyDenied) {
        status = await Permission.bluetooth.request();
      }
      if (status.isDenied ||
          status.isRestricted ||
          status.isPermanentlyDenied) {
        await openAppSettings();
        return;
      }

      final result = await viewModel.saveBasicData();
      result.ifSuccess((_) async {
        if (appMode == AppMode.hall) {
          await router.pushAndPopUntil(
            const HallModeMainRoute(),
            predicate: (_) => false,
          );
        }
        if (appMode == AppMode.sensor) {
          await router.pushAndPopUntil(
            const ScanModeMainRoute(),
            predicate: (_) => false,
          );
        }
      });
    }

    useEffect(() {
      run();
    }, []);

    return Container(color: Colors.white);
  }
}
