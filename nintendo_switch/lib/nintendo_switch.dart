import 'package:flutter/material.dart';
import 'package:nintendo_switch/colors.dart';
import 'package:nintendo_switch/components/big/blue_controller.dart';
import 'package:nintendo_switch/components/big/middle_controllers.dart';
import 'package:nintendo_switch/components/big/red_controller.dart';

import 'components/big/screen_component.dart';

class NintendoSwitch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              AppColors.backgroundGradientFrom,
              AppColors.backgroundGradientTo,
            ],
          ),
        ),
        child: Column(
          children: [
            ScreenComponent(),
            Row(
              children: [
                BlueController(),
                Expanded(
                  child: MiddleControllers(),
                ),
                RedController(),
              ],
            )
          ],
        ),
      ),
    );
  }
}