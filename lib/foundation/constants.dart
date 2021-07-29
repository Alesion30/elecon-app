import 'package:enum_to_string/enum_to_string.dart';
import 'package:flutter/material.dart';

// 環境変数
enum AppBuildType {
  // エレベーター
  elevatorLeft,
  elevatorRight,

  // エレベーターホール
  hall9F,
  hall1F,
}

enum AppMode {
  hall, // エレベーターホール
  sensor, // センサ
}

enum Dir {
  left, // 左
  right, // 右
}

@immutable
class Constants {
  const Constants({
    required this.appMode,
    this.dir,
    this.floor,
    this.themeMode = ThemeMode.light,
  });

  factory Constants.of() {
    final type = EnumToString.fromString(
      AppBuildType.values,
      const String.fromEnvironment('APPTYPE'),
    );
    if (type != null) {
      switch (type) {
        case AppBuildType.elevatorLeft:
          return Constants.elevatorLeft();
        case AppBuildType.elevatorRight:
          return Constants.elevatorRight();
        case AppBuildType.hall9F:
          return Constants.hall9F();
        case AppBuildType.hall1F:
          return Constants.hall1F();
      }
    }

    // デフォルト or デバッグ時
    return Constants.scanDebug();
  }

  // スキャンモード デバッグ
  factory Constants.scanDebug() {
    return const Constants(
      appMode: AppMode.sensor,
      themeMode: ThemeMode.dark,
    );
  }

  // エレベーター 左
  factory Constants.elevatorLeft() {
    return const Constants(
      appMode: AppMode.sensor,
      dir: Dir.left,
      themeMode: ThemeMode.dark,
    );
  }

  // エレベーター 右
  factory Constants.elevatorRight() {
    return const Constants(
      appMode: AppMode.sensor,
      dir: Dir.right,
      themeMode: ThemeMode.dark,
    );
  }

  // ホール9F
  factory Constants.hall9F() {
    return const Constants(
      appMode: AppMode.hall,
      floor: 9,
    );
  }

  // ホール1F
  factory Constants.hall1F() {
    return const Constants(
      appMode: AppMode.hall,
      floor: 1,
    );
  }

  static late final Constants instance = Constants.of();

  final AppMode appMode;
  final Dir? dir;
  final int? floor;
  final ThemeMode themeMode;

  bool get isLandscape => appMode == AppMode.hall; // ホールモードの時だけ横向き
  // double? get brightness => appMode == AppMode.sensor ? 0.1 : 1.0; // センサモードの時は暗く
}
