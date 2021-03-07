import 'package:flutter/material.dart';

class HomeButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Color(0xFF8F8989),
        border: Border.all(
          color: Color(0xFF732A23),
          width: 2
        )
      ),
      child: Center(
        child: Container(
          height: 30,
          width: 30,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Color(0xFF33383C),
          ),
          child: Center(
            child: Icon(
              Icons.home,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}