import 'package:elecon/foundation/constants.dart';
import 'package:elecon/view/hook/use_router.dart';
import 'package:elecon/view/routes/app_route.gr.dart';
import 'package:elecon/view/splash/device_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SplashPage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final router = useRouter();
    final appMode = Constants.instance.appMode;

    final viewModel = context.read(deviceViewModelProvider);

    WidgetsBinding.instance!.addPostFrameCallback((_) async {
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
    });

    return Container();
  }
}
