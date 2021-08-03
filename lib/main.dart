import 'package:case_craft_ui/pages/SplashScreens.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Case Craft',
      home: SplashScreens(),
    );
  }
}
