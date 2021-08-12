import 'package:case_craft_ui/pages/LoginScreen.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Case Craft',
      home: LoginScreen(),
    );
  }
}

void main() => runApp(MyApp());
