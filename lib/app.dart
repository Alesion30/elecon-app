import 'package:elecon/view/hook/use_theme.dart';
import 'package:elecon/view/routes/app_route.gr.dart';
import 'package:elecon/view/view_model/app_view_mode.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:permission_handler/permission_handler.dart';
import 'view/theme/app_theme.dart';

class App extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final theme = useTheme();
    final themeMode = useThemeMode();
    final appRouter = useMemoized(
      () => AppRouter(),
    );

    // ViewModel
    final viewModel = useProvider(viewModelProvider);
    useEffect(() {
      viewModel.fetchBatteryLevelRealtime();
      return () => viewModel.cancel();
    }, []);

    return MaterialApp.router(
      theme: theme.data,
      darkTheme: AppTheme.dark().data,
      themeMode: themeMode,
      supportedLocales: [
        const Locale('en', 'US'),
        const Locale('ja', 'JP'),
      ],
      routeInformationParser: appRouter.defaultRouteParser(),
      routerDelegate: appRouter.delegate(),
    );
  }
}
