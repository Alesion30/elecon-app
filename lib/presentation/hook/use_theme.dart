// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:elecon/presentation/theme/app_theme.dart';

AppTheme useTheme() {
  final theme = useProvider(appThemeProvider);
  return theme;
}

ThemeMode useThemeMode() {
  final themeMode = useProvider(appThemeModeProvider);
  return themeMode;
}
