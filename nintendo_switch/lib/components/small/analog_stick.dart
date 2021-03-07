import 'package:flutter/material.dart';

class AnalogStick extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double analogicSize = 80;
    final double layer0Size = analogicSize - 3;
    final double layer1Size = layer0Size - 15;
    final double layer11Size = layer1Size - 5;
    final double layer2Size = layer11Size - 3;
    return Container(
      height: analogicSize,
      width: analogicSize,
      decoration: BoxDecoration(
        color: Color(0xFF000),
        shape: BoxShape.circle,
      ),
      child: Center(
        child: Container(
          height: layer0Size,
          width: layer0Size,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              colors: [
                Color(0xFF686D70),
                Color(0xFF050F11),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            )
          ),
          child: Center(
            child: Container(
              height: layer1Size,
              width: layer1Size,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  colors: [
                    Color(0xFF686D70),
                    Color(0xFF050F11),
                  ],
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                )
              ),
              child: Center(
                child: Container(
                  height: layer11Size,
                  width: layer11Size,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFF000),
                  ),
                  child: Center(
                    child: Container(
                      height: layer2Size,
                      width: layer2Size,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                          colors: [
                            Color(0xFF676A6F),
                            Color(0xFF242625),
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        )
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}