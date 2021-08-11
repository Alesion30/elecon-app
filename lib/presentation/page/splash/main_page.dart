import 'package:elecon/foundation/constants.dart';
import 'package:elecon/presentation/hook/use_router.dart';
import 'package:elecon/presentation/routes/app_route.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class SplashPage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final router = useRouter();
    final appMode = Constants.instance.appMode;

    useEffect(() {
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
