import 'package:flutter/material.dart';

class BigButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 100,
      decoration: BoxDecoration(
        color: Color(0xFF5C743A),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Center(
        child: Container(
          height: 42,
          width: 92,
          decoration: BoxDecoration(
            color: Color(0xFF49B15C),
            borderRadius: BorderRadius.circular(15),
          ),
        ),
      ),
    );
  }
}