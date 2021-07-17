import 'package:elecon/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class Elevator extends StatelessWidget {
  Elevator(this.number);
  final int number;

  @override
  Widget build(BuildContext context) {
    final people = number >= 0 ? '$number人' : 'データ未取得';
    final fontSize = number >= 0 ? 35.0 : 20.0;

    // エレベータの画像
    Widget? img;
    if (number == 0) {
      img = Assets.image.elevator0.image(height: 120.0);
    } else if (number == 1) {
      img = Assets.image.elevator1.image(height: 120.0);
    } else if (number == 2) {
      img = Assets.image.elevator2.image(height: 120.0);
    } else if (number == 3) {
      img = Assets.image.elevator3.image(height: 120.0);
    } else if (number == 4) {
      img = Assets.image.elevator4.image(height: 120.0);
    } else if (number == 5) {
      img = Assets.image.elevator5.image(height: 120.0);
    } else if (number >= 6) {
      img = Assets.image.elevatorOver.image(height: 120.0);
    }

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Visibility(
          visible: img != null,
          child: Container(
            margin: const EdgeInsets.only(top: 10.0),
            child: img,
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 10.0),
          child: Text(
            people,
            style: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
