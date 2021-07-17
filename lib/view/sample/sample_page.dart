import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class SamplePage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
