import 'package:flutter/cupertino.dart';

class ArrowClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = new Path();

    path.moveTo(size.width * 0.5, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.lineTo(size.width * 0.5, 0);

    return path;
  }
  
  @override
  bool shouldReclip(covariant CustomClipper oldClipper) => false;

}