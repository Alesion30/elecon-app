import 'package:elecon/view/hook/use_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class SamplePage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final theme = useTheme();
    return Scaffold(
      backgroundColor: theme.appColors.accent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'sample',
            ),
          ],
        ),
      ),
    );
  }
}
