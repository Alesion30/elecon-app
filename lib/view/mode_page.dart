import 'package:elecon/foundation/constants.dart';
import 'package:elecon/view/hook/use_router.dart';
import 'package:elecon/view/routes/app_route.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class ModePage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final router = useRouter();
    final appMode = Constants.instance.appMode;

    WidgetsBinding.instance!.addPostFrameCallback((_) {
      if (appMode == AppMode.hall) {
        router.pushAndPopUntil(
          const HallModeMainRoute(),
          predicate: (_) => false,
        );
      }
      if (appMode == AppMode.scan) {
        router.pushAndPopUntil(
          const ScanModeMainRoute(),
          predicate: (_) => false,
        );
      }
    });

    return Container();
  }
}
