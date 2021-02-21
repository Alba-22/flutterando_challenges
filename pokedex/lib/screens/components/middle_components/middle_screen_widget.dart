import 'package:flutter/material.dart';
import 'package:pokedex/core/colors/colors.dart';
import 'package:pokedex/screens/components/middle_components/screen_frame_clipper.dart';

class MiddleScreenWidget extends StatelessWidget {

  final double width;

  const MiddleScreenWidget({
    Key key, 
    @required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 30,
      ),
      child: ClipPath(
        clipper: ScreenFrameClipper(),
        child: Container(
          height: 200,
          width: width,
          color: AppColors.screenFrame,
          padding: EdgeInsets.only(
            top: 20,
            left: 20,
            right: 20,
          ),
          child: Stack(
            children: [
              /// PIKACHU AQUI
              Column(
                children: [
                  Container(
                    height: 135,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: AppColors.screen,
                      borderRadius: BorderRadius.circular(20)
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: 15,
                            width: 15,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppColors.screenButton,
                            ),
                          ),
                          Container(
                            height: 25,
                            width: 25,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(2),
                              gradient: LinearGradient(
                                colors: [
                                  AppColors.soundLayer0Top,
                                  AppColors.soundLayer0Bottom,
                                ],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                              ),
                            ),
                            child: Center(
                              child: Container(
                                height: 20,
                                width: 20,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(2),
                                  gradient: LinearGradient(
                                    colors: [
                                      AppColors.soundLayer1Top,
                                      AppColors.soundLayer1Bottom,
                                    ],
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                  ),
                                ),
                                child: Center(
                                  child: Container(
                                    height: 15,
                                    width: 15,
                                    decoration: BoxDecoration(
                                      color: AppColors.soundLayer2,
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}