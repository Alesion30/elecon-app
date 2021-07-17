import 'package:elecon/view/common/button.dart';
import 'package:elecon/view/common/elevator.dart';
import 'package:elecon/view/hook/use_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class FloorModeMainPage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final theme = useTheme();
    final floor = 0;
    final cocoaCount = 0;

    return Scaffold(
      body: Stack(
        children: [
          Container(
            constraints: const BoxConstraints.expand(),
            margin: const EdgeInsets.symmetric(horizontal: 80.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MainWrapperColumn(
                  children: [
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.symmetric(
                          vertical: 30.0,
                          horizontal: 30.0,
                        ),
                        color: Colors.white,
                        child: Column(
                          children: [
                            // エレベータ内 人数表示
                            Expanded(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: Elevator(10),
                                  ),
                                  const VerticalDivider(),
                                  Expanded(
                                    child: Elevator(-1),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    // 混雑度を選択するボタン
                    Container(
                      height: 300.0,
                      margin: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(
                              top: 20.0,
                              bottom: 10.0,
                            ),
                            child: Text(
                              '${floor}Fの状態を以下の三つの選択肢から選んでください！',
                              style: const TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: SquareButton(
                                  '混雑\n（6人以上）',
                                  isPressed: false,
                                  onPressed: () {},
                                  height: 200,
                                  color: theme.appColors.stateHigh,
                                  margin: const EdgeInsets.all(10.0),
                                ),
                              ),
                              Expanded(
                                child: SquareButton(
                                  'やや混雑\n（3人〜5人）',
                                  isPressed: false,
                                  onPressed: () {},
                                  height: 200,
                                  color: theme.appColors.stateHigh,
                                  margin: const EdgeInsets.all(10.0),
                                ),
                              ),
                              Expanded(
                                child: SquareButton(
                                  '空いている\n（1人〜2人）',
                                  isPressed: false,
                                  onPressed: () {},
                                  height: 200,
                                  color: theme.appColors.stateHigh,
                                  margin: const EdgeInsets.all(10.0),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                // 各階の混雑度を表示
                Container(
                  width: 200.0,
                  child: Container(),
                ),
              ],
            ),
          ),

          // 階表示(左上)
          Positioned(
            left: 10,
            top: 10,
            child: FloatingActionButton(
              onPressed: () {},
              backgroundColor: theme.appColors.accent,
              child: Text(
                '${floor}F',
                style: const TextStyle(
                  fontSize: 26.0,
                ),
              ),
            ),
          ),

          // cocoaのカウント
          Positioned(
            right: 10,
            bottom: 10,
            child: Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 2.0),
                  child: Icon(
                    Icons.save,
                    color: theme.appColors.info,
                  ),
                ),
                Text('$cocoaCount'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MainWrapperColumn extends HookWidget {
  MainWrapperColumn({required this.children});
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        constraints: const BoxConstraints.expand(),
        child: Column(
          children: children,
        ),
      ),
    );
  }
}
