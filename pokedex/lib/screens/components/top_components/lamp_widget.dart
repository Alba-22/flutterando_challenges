import 'package:flutter/material.dart';
import 'package:pokedex/core/colors/colors.dart';

class LampWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 80,
          width: 80,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: AppColors.lampFrame,
          ),
          child: Center(
            child: Container(
              height: 65,
              width: 65,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: RadialGradient(
                  colors: [
                    AppColors.lampInner,
                    AppColors.lampOuter,
                  ],
                  radius: 0.525,
                  stops: [
                    0.65,
                    1
                  ],
                ),
              ),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(
            left: 28,
            top: 28,
          ),
          height: 12,
          width: 12,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: RadialGradient(
              colors: [
                AppColors.lampShineIner,
                AppColors.lampShineOuter,
              ],
              radius: 0.5,
            ),
          ),
        ),
      ],
    );
  }
}