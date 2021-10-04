// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:elecon/presentation/hook/use_effect.dart';
import 'package:elecon/presentation/hook/use_theme.dart';
import 'package:elecon/presentation/routes/app_route.gr.dart';
import 'package:elecon/presentation/view_model/device_view_model.dart';
import 'presentation/theme/app_theme.dart';

class App extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final theme = useTheme();
    final themeMode = useThemeMode();
    final appRouter = useMemoized(
      () => AppRouter(),
    );

    final viewModel = useProvider(deviceViewModelProvider);

    useEffectSafety(() {
      print('App Start!!');
      viewModel.init();

      return () => viewModel.cancel();
    }, []);

    return MaterialApp.router(
      theme: theme.data,
      darkTheme: AppTheme.dark().data,
      themeMode: themeMode,
      debugShowCheckedModeBanner: false,
      supportedLocales: [
        const Locale('en', 'US'),
        const Locale('ja', 'JP'),
      ],
      routeInformationParser: appRouter.defaultRouteParser(),
      routerDelegate: appRouter.delegate(),
    );
  }
}
