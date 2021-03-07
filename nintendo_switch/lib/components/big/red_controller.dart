import 'package:flutter/material.dart';
import 'package:nintendo_switch/components/small/action_buttons.dart';
import 'package:nintendo_switch/components/small/analog_stick.dart';
import 'package:nintendo_switch/components/small/home_button.dart';
import 'package:nintendo_switch/components/small/plus_button.dart';

import '../../colors.dart';

class RedController extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.4,
      width: 170,
      decoration: BoxDecoration(
        color: AppColors.red,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(
            MediaQuery.of(context).size.height * 0.12,
          ),
        )
      ),
      child: Stack(
        children: [
          Positioned(
            top: 20,
            right: 20,
            child: PlusButton(),
          ),
          Positioned(
            bottom: 20,
            right: 20,
            child: HomeButton(),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.07,
            left: 30,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ActionButtons(),
                SizedBox(height: 15),
                AnalogStick(),
              ],
            ),
          ),
          // HomeButton(),
          // AnalogStick(),
          // PlusButton(),
          // ActionButtons(),
        ],
      ),
    );
  }
}