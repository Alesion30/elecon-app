import 'package:auto_route/auto_route.dart';
import 'package:elecon/view/hall_mode/main_page.dart';
import 'package:elecon/view/mode_page.dart';
import 'package:elecon/view/sample/sample_page.dart';
import 'package:elecon/view/sensor_mode/main_page.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: [
    AutoRoute(
      initial: true,
      page: ModePage,
    ),
    AutoRoute(
      page: HallModeMainPage,
    ),
    AutoRoute(
      page: ScanModeMainPage,
    ),
    AutoRoute(
      page: SamplePage,
    ),
  ],
)
class $AppRouter {}
