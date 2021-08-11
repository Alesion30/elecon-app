// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:elecon/presentation/page/hall_mode/main_page.dart' as _i4;
import 'package:elecon/presentation/page/sensor_mode/main_page.dart' as _i5;
import 'package:elecon/presentation/page/splash/main_page.dart' as _i3;
import 'package:flutter/material.dart' as _i2;

class AppRouter extends _i1.RootStackRouter {
  AppRouter([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i3.SplashPage();
        }),
    HallModeMainRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i4.HallModeMainPage();
        }),
    ScanModeMainRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i5.ScanModeMainPage();
        })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(SplashRoute.name, path: '/'),
        _i1.RouteConfig(HallModeMainRoute.name, path: '/hall-mode-main-page'),
        _i1.RouteConfig(ScanModeMainRoute.name, path: '/scan-mode-main-page')
      ];
}

class SplashRoute extends _i1.PageRouteInfo {
  const SplashRoute() : super(name, path: '/');

  static const String name = 'SplashRoute';
}

class HallModeMainRoute extends _i1.PageRouteInfo {
  const HallModeMainRoute() : super(name, path: '/hall-mode-main-page');

  static const String name = 'HallModeMainRoute';
}

class ScanModeMainRoute extends _i1.PageRouteInfo {
  const ScanModeMainRoute() : super(name, path: '/scan-mode-main-page');

  static const String name = 'ScanModeMainRoute';
}
