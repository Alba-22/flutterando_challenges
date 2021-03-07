import 'package:flutter/material.dart';

class PlusButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: 30,
            width: 12,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(2),
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  Color(0xFF4A494E),
                  Color(0xFF525157),
                ]
              )
            ),
          ),
          Container(
            height: 12,
            width: 30,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(2),
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  Color(0xFF4A494E),
                  Color(0xFF525157),
                ]
              )
            ),
          ),
        ],
      ),
    );
  }
}