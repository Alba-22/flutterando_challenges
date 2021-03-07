import 'package:flutter/material.dart';

class SoundWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 30,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xFF7B8287),
            Color(0xFF324144),
          ],
        ),
      ),
      child: Center(
        child: Container(
          height: 25,
          width: 25,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFF4A494E),
                Color(0xFF525157),
              ],
            ),
          ),
          child: Center(
            child: Container(
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                color: Color(0xFF182022),
                shape: BoxShape.circle,
              ),
            ),
          ),
        ),
      ),
    );
  }
}