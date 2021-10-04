// Flutter imports:
import 'package:flutter/material.dart';

class SquareButton extends StatelessWidget {
  SquareButton(
    this.title, {
    required this.color,
    this.height,
    this.width,
    required this.margin,
    required this.isPressed,
    required this.onPressed,
  });
  final String title;
  final Color color;
  final double? height;
  final double? width;
  final bool isPressed;
  final EdgeInsetsGeometry margin;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      margin: margin,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: isPressed == true ? color : Colors.grey[100],
          onPrimary: Colors.black,
          elevation: 6,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(1000),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 20.0,
          ),
        ),
      ),
    );
  }
}
