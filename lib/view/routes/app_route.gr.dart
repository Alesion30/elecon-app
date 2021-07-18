// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:elecon/view/hall_mode/main_page.dart' as _i4;
import 'package:elecon/view/mode_page.dart' as _i3;
import 'package:elecon/view/sample/sample_page.dart' as _i6;
import 'package:elecon/view/sensor_mode/main_page.dart' as _i5;
import 'package:flutter/material.dart' as _i2;

class AppRouter extends _i1.RootStackRouter {
  AppRouter([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    ModeRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i3.ModePage();
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
        }),
    SampleRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i6.SamplePage();
        })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(ModeRoute.name, path: '/'),
        _i1.RouteConfig(HallModeMainRoute.name, path: '/hall-mode-main-page'),
        _i1.RouteConfig(ScanModeMainRoute.name, path: '/scan-mode-main-page'),
        _i1.RouteConfig(SampleRoute.name, path: '/sample-page')
      ];
}

class ModeRoute extends _i1.PageRouteInfo {
  const ModeRoute() : super(name, path: '/');

  static const String name = 'ModeRoute';
}

class HallModeMainRoute extends _i1.PageRouteInfo {
  const HallModeMainRoute() : super(name, path: '/hall-mode-main-page');

  static const String name = 'HallModeMainRoute';
}

class ScanModeMainRoute extends _i1.PageRouteInfo {
  const ScanModeMainRoute() : super(name, path: '/scan-mode-main-page');

  static const String name = 'ScanModeMainRoute';
}

class SampleRoute extends _i1.PageRouteInfo {
  const SampleRoute() : super(name, path: '/sample-page');

  static const String name = 'SampleRoute';
}
