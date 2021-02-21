import 'package:flutter/material.dart';
import 'package:pokedex/core/colors/colors.dart';

class AnalogicWidget extends StatelessWidget {
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
        color: AppColors.bigButtonLayerBorder,
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
                AppColors.bigButtonLayer0Top,
                AppColors.bigButtonLayer0Bottom,
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
                    AppColors.bigButtonLayer1Top,
                    AppColors.bigButtonLayer1Bottom,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                )
              ),
              child: Center(
                child: Container(
                  height: layer11Size,
                  width: layer11Size,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.bigButtonLayerBorder,
                  ),
                  child: Center(
                    child: Container(
                      height: layer2Size,
                      width: layer2Size,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                          colors: [
                            AppColors.bigButtonLayer2Top,
                            AppColors.bigButtonLayer2Bottom,
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