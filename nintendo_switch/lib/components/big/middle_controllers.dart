import 'package:flutter/material.dart';

class MiddleControllers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              littleLed(activated: true),
              littleLed(),
              littleLed(),
              littleLed(),
            ],
          ),
          SizedBox(width: 5),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 65,
                  width: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      bottomLeft: Radius.circular(15),
                    ),
                    border: Border.all(
                      color: Colors.black,
                      width: 5,
                    ),
                  ),
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      margin: EdgeInsets.only(
                        top: 2,
                        left: 4,
                        right: 4,
                      ),
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Container(
                  height: 65,
                  width: 25,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                    ),
                    color: Colors.black,
                  ),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      margin: EdgeInsets.only(
                        bottom: 15,
                        left: 7,
                        right: 7,
                      ),
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xFF272B2E),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: 5),
          Column(
            children: [
              littleLed(),
              littleLed(),
              littleLed(),
              littleLed(),
            ],
          ),
        ],
      ),
    );
  }

  Widget littleLed({bool activated = false}) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: 5,
        horizontal: 15,
      ),
      height: 8,
      width: 8,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: activated
        ? Color(0xFFB6EBA5)
        : Color(0xFF222327)
      ),
    );
  }

}