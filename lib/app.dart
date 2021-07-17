import 'package:elecon/view/hook/use_theme.dart';
import 'package:elecon/view/routes/app_route.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'view/theme/app_theme.dart';

class App extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final theme = useTheme();
    final themeMode = useThemeMode();
    final appRouter = useMemoized(
      () => AppRouter(),
    );

    return MaterialApp.router(
      theme: theme.data,
      darkTheme: AppTheme.dark().data,
      themeMode: themeMode,
      routeInformationParser: appRouter.defaultRouteParser(),
      routerDelegate: appRouter.delegate(),
    );
  }
}
