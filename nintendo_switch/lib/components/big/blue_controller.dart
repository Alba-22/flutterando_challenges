import 'package:flutter/material.dart';
import 'package:nintendo_switch/colors.dart';
import 'package:nintendo_switch/components/small/analog_stick.dart';
import 'package:nintendo_switch/components/small/digital_directional.dart';
import 'package:nintendo_switch/components/small/minus_button.dart';
import 'package:nintendo_switch/components/small/sound_widget.dart';

class BlueController extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.4,
      width: 170,
      decoration: BoxDecoration(
        color: AppColors.blue,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(
            MediaQuery.of(context).size.height * 0.12,
          ),
        )
      ),
      child: Stack(
        children: [
          Positioned(
            top: 20,
            left: 20,
            child: MinusButton(),
          ),
          Positioned(
            bottom: 20,
            left: 20,
            child: SoundWidget(),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.055,
            right: 30,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AnalogStick(),
                SizedBox(height: 15),
                DigitalDirectional(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}