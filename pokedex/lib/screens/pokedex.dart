import 'package:flutter/material.dart';
import 'package:pokedex/core/colors/colors.dart';
import 'package:pokedex/screens/components/bottom_components/analogic_widget.dart';
import 'package:pokedex/screens/components/bottom_components/digital_pad_widget.dart';
import 'package:pokedex/screens/components/bottom_components/thin_button.dart';
import 'package:pokedex/screens/components/top_components/lamp_widget.dart';
import 'package:pokedex/screens/components/middle_components/middle_screen_widget.dart';
import 'package:pokedex/screens/components/top_components/top_side_painter.dart';

import 'components/bottom_components/big_button.dart';
import 'components/top_components/led_indicative_widget.dart';
import 'components/top_components/shadow_top_side_painter.dart';

class Pokedex extends StatefulWidget {
  @override
  _PokedexState createState() => _PokedexState();
}

class _PokedexState extends State<Pokedex> {
  @override
  Widget build(BuildContext context) {
    final double rightWidgetWidth = MediaQuery.of(context).size.width * 0.08;
    final double topSideHeight = 140;
    final double topSideShadowHeight = 160;
    final Color pokedexScaffoldColor = Color(0xFFCC1416);
    final Color pokedexScaffoldDarkShadowColor = Color(0xFFA51A17);

    Widget littleBar(double rightWidgetWidth) {
      return Container(
        height: 5,
        width: rightWidgetWidth,
        color: pokedexScaffoldDarkShadowColor,
      );
    }

    return Scaffold(
      backgroundColor: AppColors.screenButton,
      body: SafeArea(
        child: Stack(
          children: [
            /// TOP SIDE
            Positioned(
              top: 0,
              width: MediaQuery.of(context).size.width,
              child: CustomPaint(
                size: Size(
                  MediaQuery.of(context).size.width,
                  topSideShadowHeight,
                ),
                painter: ShadowTopSidePainter(pokedexScaffoldDarkShadowColor),
              ),
            ),
            /// TOP SIDE SHADOW
            Positioned(
              top: 0,
              width: MediaQuery.of(context).size.width,
              child: CustomPaint(
                size: Size(
                  MediaQuery.of(context).size.width,
                  topSideHeight,
                ),
                painter: TopSidePainter(pokedexScaffoldColor),
              ),
            ),
            /// POKEDEX'S RIGHT SIDE
            Positioned(
              top: topSideHeight * 0.55,
              right: 0,
              child: Container(
                height: MediaQuery.of(context).size.height - topSideHeight * 0.55,
                child: Column(
                  children: [
                    Container(
                      height: (topSideHeight * 0.45) + (topSideShadowHeight - topSideHeight),
                      width: rightWidgetWidth,
                      decoration: BoxDecoration(
                        color: pokedexScaffoldColor,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                        ),
                      ),
                    ),
                    littleBar(rightWidgetWidth),
                    Container(
                      height: MediaQuery.of(context).size.height - topSideShadowHeight - 10 - 85,
                      width: rightWidgetWidth,
                      color: pokedexScaffoldColor,
                    ),
                    littleBar(rightWidgetWidth),
                    Container(
                      height: 60,
                      width: rightWidgetWidth,
                      decoration: BoxDecoration(
                        color: pokedexScaffoldColor,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                        ),
                      ),
                    ),
                  ],
                ),
              ),  
            ),
            /// TOP LIGHTS
            Positioned(
              top: MediaQuery.of(context).size.width * 0.05,
              left: MediaQuery.of(context).size.width * 0.05,
              child: Container(
                width: MediaQuery.of(context).size.width * 0.5,
                height: 80,
                child: Row(
                  children: [
                    LampWidget(),
                    SizedBox(width: 15),
                    Expanded(
                      child: Container(
                        alignment: Alignment.topCenter,
                        child: Row(
                          children: [
                            LedIndicativeWidget(
                              innerColor: AppColors.redLedInner,
                              outerColor: AppColors.redLedOuter,
                              borderColor: AppColors.redLedBorder,
                            ),
                            SizedBox(width: 10),
                            LedIndicativeWidget(
                              innerColor: AppColors.yellowLedInner,
                              outerColor: AppColors.yellowLedOuter,
                              borderColor: AppColors.yellowLedBorder,
                            ),
                            SizedBox(width: 10),
                            LedIndicativeWidget(
                              innerColor: AppColors.greenLedInner,
                              outerColor: AppColors.greenLedOuter,
                              borderColor: AppColors.greenLedBorder,
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )
            ),
            /// POKEDEX'S MIDDLE
            Positioned(
              left: 0,
              top: topSideHeight,
              width: MediaQuery.of(context).size.width - rightWidgetWidth,
              child: Column(
                children: [
                  MiddleScreenWidget(
                    width: MediaQuery.of(context).size.width - rightWidgetWidth,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height - 240 - topSideHeight,
                    width: MediaQuery.of(context).size.width - rightWidgetWidth,
                    margin: EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 20,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: AnalogicWidget(),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  ThinButton(
                                    borderColor: Color(0xFFBC1F21),
                                    innerColor: Color(0xFFA51A17),
                                  ),
                                  ThinButton(
                                    borderColor: Color(0xFF3B557B),
                                    innerColor: Color(0xFF0F6594),
                                  ),
                                ],
                              ),
                              SizedBox(height: 30,),
                              BigButton()
                            ],
                          ),
                        ),
                        SizedBox(width: 15),
                        Expanded(
                          child: DigitalPadWidget(),
                          
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
