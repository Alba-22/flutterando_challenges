import 'package:flutter/cupertino.dart';

class ShadowTopSidePainter extends CustomPainter {

  final Color color;

  ShadowTopSidePainter(this.color);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = new Paint()
    ..color = color;

    Path path = new Path();

    path.lineTo(0, size.height);
    path.lineTo(size.width * 0.38, size.height);
    path.lineTo(size.width * 0.575, size.height * 0.60);
    path.lineTo(size.width * 0.92, size.height * 0.60);
    path.lineTo(size.width * 0.92, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);

    canvas.drawPath(path, paint);
  }
  
  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;

}