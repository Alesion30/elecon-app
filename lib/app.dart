import 'dart:async';

import 'package:elecon/data/service/device_service.dart';
import 'package:elecon/view/hook/use_theme.dart';
import 'package:elecon/view/routes/app_route.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
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
      routeInformationParser: appRouter.defaultRouteParser(),
      routerDelegate: appRouter.delegate(),
    );
  }
}

final viewModelProvider = ChangeNotifierProvider(
  (ref) => ViewModel(ref.read),
);

class ViewModel extends ChangeNotifier {
  ViewModel(this._reader);
  final Reader _reader;
  late final DeviceService _repository = _reader(deviceServiceProvider);

  StreamSubscription<int?>? _subscription;

  void fetchBatteryLevelRealtime() {
    _subscription = _repository.getBatteryLevelStream().listen(
      (data) async {
        await _repository.saveBatteryLevel(data);
      },
    );
  }

  void cancel() {
    _subscription!.cancel();
  }
}
