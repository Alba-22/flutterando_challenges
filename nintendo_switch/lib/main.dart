import 'package:flutter/material.dart';
import 'package:nintendo_switch/nintendo_switch.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nintendo Switch',
      debugShowCheckedModeBanner: false,
      home: NintendoSwitch(),
    );
  }
}