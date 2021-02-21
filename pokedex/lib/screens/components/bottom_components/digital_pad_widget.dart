import 'package:flutter/material.dart';
import 'package:pokedex/screens/components/bottom_components/arrow_clipper.dart';
import 'package:pokedex/screens/components/bottom_components/digital_pad_clipper.dart';
import 'dart:math' as math;

class DigitalPadWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ClipPath(
        clipper: DigitalPadClipper(),
        child: Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            color: Colors.black,
            gradient: LinearGradient(
              colors: [
                Color(0xFF5B6164),
                Color(0xFF18191A),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Stack(
            children: [
              Align(
                alignment: Alignment.center,
                child: Container(
                  height: 15,
                  width: 15,
                  decoration: BoxDecoration(
                    color: Color(0xFF182022),
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: arrow(),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Transform.rotate(
                  angle: -math.pi,
                  child: arrow(),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Transform.rotate(
                  angle: -math.pi / 2,
                  child: arrow(),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Transform.rotate(
                  angle: -( 3 * math.pi) / 2,
                  child: arrow(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget arrow() {
    return Container(
      height: 100 / 3,
      width: 100 / 3,
      child: Center(
        child: ClipPath(
          clipper: ArrowClipper(),
          child: Container(
            height: 12,
            width: 12,
            color: Color(0xFF182022),
          ),
        ),
      ),
    );
  }

}