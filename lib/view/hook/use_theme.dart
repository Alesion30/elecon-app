import 'package:elecon/view/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

AppTheme useTheme() {
  final theme = useProvider(appThemeProvider);
  return theme;
}

ThemeMode useThemeMode() {
  final themeMode = useProvider(appThemeModeProvider);
  return themeMode;
}
