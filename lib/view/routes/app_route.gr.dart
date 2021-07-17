// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:elecon/view/floor_mode/main_page.dart' as _i3;
import 'package:elecon/view/sample/sample_page.dart' as _i4;
import 'package:flutter/material.dart' as _i2;

class AppRouter extends _i1.RootStackRouter {
  AppRouter([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    FloorModeMainRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i3.FloorModeMainPage();
        }),
    SampleRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i4.SamplePage();
        })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(FloorModeMainRoute.name, path: '/'),
        _i1.RouteConfig(SampleRoute.name, path: '/sample-page')
      ];
}

class FloorModeMainRoute extends _i1.PageRouteInfo {
  const FloorModeMainRoute() : super(name, path: '/');

  static const String name = 'FloorModeMainRoute';
}

class SampleRoute extends _i1.PageRouteInfo {
  const SampleRoute() : super(name, path: '/sample-page');

  static const String name = 'SampleRoute';
}
