import 'package:auto_route/auto_route.dart';
import 'package:elecon/view/hall_mode/main_page.dart';
import 'package:elecon/view/splash/main_page.dart';
import 'package:elecon/view/sensor_mode/main_page.dart';

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
