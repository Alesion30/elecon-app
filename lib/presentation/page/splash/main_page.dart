// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_hooks/flutter_hooks.dart';

// Project imports:
import 'package:elecon/foundation/constants.dart';
import 'package:elecon/presentation/hook/use_effect.dart';
import 'package:elecon/presentation/hook/use_router.dart';
import 'package:elecon/presentation/routes/app_route.gr.dart';

class SplashPage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final router = useRouter();
    final appMode = Constants.instance.appMode;

    useEffectSafety(() {
      if (appMode == AppMode.hall) {
        router.pushAndPopUntil(
          const HallModeMainRoute(),
          predicate: (_) => false,
        );
      }
      if (appMode == AppMode.sensor) {
        router.pushAndPopUntil(
          const ScanModeMainRoute(),
          predicate: (_) => false,
        );
      }
    }, []);

    return Container(color: Colors.white);
  }
}
