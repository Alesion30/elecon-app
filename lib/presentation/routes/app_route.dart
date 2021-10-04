// Package imports:
import 'package:auto_route/auto_route.dart';

// Project imports:
import 'package:elecon/presentation/page/hall_mode/main_page.dart';
import 'package:elecon/presentation/page/sensor_mode/main_page.dart';
import 'package:elecon/presentation/page/splash/main_page.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: [
    AutoRoute(
      initial: true,
      page: SplashPage,
    ),
    AutoRoute(
      page: HallModeMainPage,
    ),
    AutoRoute(
      page: ScanModeMainPage,
    ),
  ],
)
class $AppRouter {}
