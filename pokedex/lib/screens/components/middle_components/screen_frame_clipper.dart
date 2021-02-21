import 'package:flutter/cupertino.dart';
import 'dart:math' as math;

class ScreenFrameClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = new Path();

    // Transforms degrees into radians
    num degToRad(num deg) => deg * (math.pi / 180);

    path.moveTo(0, size.height * 0.15);
    path.lineTo(0, size.height - 39);
    path.lineTo(39, size.height);
    path.lineTo(size.width * 0.85, size.height);
    path.arcTo(
      Rect.fromCenter(height: 50, width: 50, center: Offset(size.width - 25, size.height - 25)),
      degToRad(90),
      degToRad(-90),
      false,
    );
    path.lineTo(size.width, size.height * 0.85);
    path.arcTo(
      Rect.fromCenter(height: 50, width: 50, center: Offset(size.width - 25, 25)),
      degToRad(0),
      degToRad(-90),
      false,
    );
    path.lineTo(size.width * 0.15, 0);
    path.arcTo(
      Rect.fromCenter(height: 50, width: 50, center: Offset(25, 25)),
      degToRad(-90),
      degToRad(-90),
      false,
    );
    path.lineTo(0, size.height * 0.15);

    return path;
  }
  
  @override
  bool shouldReclip(covariant CustomClipper oldClipper) => false;

}