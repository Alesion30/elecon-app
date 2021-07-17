import 'package:elecon/view/routes/app_route.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class App extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final appRouter = useMemoized(
      () => AppRouter(),
    );

    return MaterialApp.router(
      routeInformationParser: appRouter.defaultRouteParser(),
      routerDelegate: appRouter.delegate(),
    );
  }
}
