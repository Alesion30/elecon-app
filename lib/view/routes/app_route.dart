import 'package:auto_route/auto_route.dart';
import 'package:elecon/view/sample/sample_page.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: [
    AutoRoute(
      initial: true,
      page: SamplePage,
    ),
  ],
)
class $AppRouter {}
