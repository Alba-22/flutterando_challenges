import 'package:flutter/material.dart';

enum Direction {
  top,
  left,
  bottom,
  right,
}

class DigitalDirectional extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const double size = 120;
    return Container(
      height: size,
      width: size,
      child: Stack(
        children: [
          Positioned(
            top: 0,
            width: size,
            child: Align(
              alignment: Alignment.center,
              child: _button(Direction.top),
            ),
          ),
          Positioned(
            right: 0,
            height: size,
            child: Align(
              alignment: Alignment.center,
              child: _button(Direction.right),
            ),
          ),
          Positioned(
            bottom: 0,
            width: size,
            child: Align(
              alignment: Alignment.center,
              child: _button(Direction.bottom),
            ),
          ),
          Positioned(
            left: 0,
            height: size,
            child: Align(
              alignment: Alignment.center,
              child: _button(Direction.left),
            ),
          ),
        ],
      ),
    );
  }

  Widget _button(Direction direction) {
    const double buttonSize = 40;
    return Container(
      height: buttonSize,
      width: buttonSize,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xFF7B8287),
            Color(0xFF050F11),
          ],
        ),
      ),
      child: Center(
        child: Container(
          height: buttonSize - 5,
          width: buttonSize - 5,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Color(0xFF686D70),
                Color(0xFF050F11),
              ],
            ),
          ),
          child: Center(
            child: Icon(
              _arrow(direction),
              color: Colors.black,
              size: 32,
            ),
          ),
        ),
      ),
    );
  }

  IconData _arrow(Direction direction) {
    switch (direction) {
      case Direction.top:
        return Icons.arrow_drop_up;
      case Direction.bottom:
        return Icons.arrow_drop_down;
      case Direction.left:
        return Icons.arrow_left;
      case Direction.right:
        return Icons.arrow_right;
      default:
        return Icons.arrow_drop_up;
    }
  }

}