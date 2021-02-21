import 'package:flutter/material.dart';

class ThinButton extends StatelessWidget {
  final Color borderColor;
  final Color innerColor;

  const ThinButton({
    Key key,
    @required this.borderColor,
    @required this.innerColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 10,
      width: 40,
      decoration: BoxDecoration(
        color: borderColor,
        borderRadius: BorderRadius.circular(2),
      ),
      child: Center(
        child: Container(
          height: 8,
          width: 38,
          decoration: BoxDecoration(
            color: innerColor,
            borderRadius: BorderRadius.circular(2),
          ),
        ),
      ),
    );
  }
}
