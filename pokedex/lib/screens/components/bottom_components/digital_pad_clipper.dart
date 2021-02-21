import 'package:flutter/cupertino.dart';

class DigitalPadClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = new Path();
    
    path.moveTo(0, size.height * 0.33);
    path.lineTo(size.width * 0.33, size.height * 0.33);
    path.lineTo(size.width * 0.33, 0);
    path.lineTo(size.width * 0.66, 0);
    path.lineTo(size.width * 0.66, size.height * 0.33);
    path.lineTo(size.width, size.height * 0.33);
    path.lineTo(size.width, size.height * 0.66);
    path.lineTo(size.width * 0.66, size.height * 0.66);
    path.lineTo(size.width * 0.66, size.height);
    path.lineTo(size.width * 0.33, size.height);
    path.lineTo(size.width * 0.33, size.height * 0.66);
    path.lineTo(0, size.height * 0.66);
    path.lineTo(0, size.height * 0.33);

    return path;
  }
  
  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;

}