import 'package:auto_route/auto_route.dart';
import 'package:elecon/view/floor_mode/main_page.dart';
import 'package:elecon/view/sample/sample_page.dart';
import 'package:elecon/view/sensor_mode/main_page.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: [
    AutoRoute(
      page: FloorModeMainPage,
    ),
    AutoRoute(
      initial: true,
      page: ScanModeMainPage,
    ),
    AutoRoute(
      page: SamplePage,
    ),
  ],
)
class $AppRouter {}
