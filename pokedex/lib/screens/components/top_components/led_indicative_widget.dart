import 'package:flutter/material.dart';

class LedIndicativeWidget extends StatelessWidget {
  final Color outerColor;
  final Color innerColor;
  final Color borderColor;

  const LedIndicativeWidget({
    Key key,
    @required this.outerColor,
    @required this.innerColor,
    @required this.borderColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double size = 15;
    final double border = 3;
    return Container(
      height: size,
      width: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: borderColor,
      ),
      child: Center(
        child: Container(
          height: size - border,
          width: size - border,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: RadialGradient(
              colors: [
                innerColor,
                outerColor,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
