// Flutter imports:
import 'package:flutter/material.dart';

class AppColors {
  const AppColors({
    required this.font,
    required this.background, // 背景色
    required this.header, // ヘッダー色
    required this.accent, // アクセントカラー
    required this.success, // 肯定色
    required this.danger, // 否定色
    required this.info, // 情報色
    required this.active, // 活性色
    required this.inactive, // 非活性色
    required this.error, // エラー色

    // カスタム
    required this.stateHigh, // 混んでいる
    required this.stateMiddle, // やや混んでいる
    required this.stateLow, // 空いている
  });

  factory AppColors.light() {
    return const AppColors(
      font: Color(0xff000000),
      background: Color(0xffECECEC),
      header: Color(0xffffffff),
      accent: Color(0xffF9881F),
      success: Color(0xff7dc579),
      danger: Color(0xffEB7258),
      info: Color(0xff79BCC5),
      active: Color(0xff6496D1),
      inactive: Color(0xffC6C6C6),
      error: Color(0xffEB7258),

      // カスタム
      stateHigh: Color(0xffFFCDD2),
      stateMiddle: Color(0xffFFF9C4),
      stateLow: Color(0xffC8E6C9),
    );
  }

  factory AppColors.dark() {
    return const AppColors(
      font: Color(0xffFFFFFF),
      background: Color(0xff000000),
      header: Color(0xffffffff),
      accent: Color(0xffF9881F),
      success: Color(0xff7dc579),
      danger: Color(0xffEB7258),
      info: Color(0xff79BCC5),
      active: Color(0xff6496D1),
      inactive: Color(0xffC6C6C6),
      error: Color(0xffEB7258),

      // カスタム
      stateHigh: Color(0xffFFCDD2),
      stateMiddle: Color(0xffFFF9C4),
      stateLow: Color(0xffC8E6C9),
    );
  }

  final Color font;
  final Color background;
  final Color header;
  final Color accent;
  final Color success;
  final Color danger;
  final Color info;
  final Color active;
  final Color inactive;
  final Color error;

  // カスタム
  final Color stateHigh;
  final Color stateMiddle;
  final Color stateLow;
}
