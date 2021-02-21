import 'package:flutter/material.dart';

class TopSidePainter extends CustomPainter {

  final Color color;

  TopSidePainter(this.color);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = new Paint()
    ..color = color;

    Path path = new Path();

    path.lineTo(0, size.height);
    path.lineTo(size.width * 0.35, size.height);
    path.lineTo(size.width * 0.55, size.height * 0.55);
    path.lineTo(size.width * 0.95, size.height * 0.55);
    path.lineTo(size.width * 0.95, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);

    canvas.drawPath(path, paint);
  }
  
  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;

}