import 'package:fitness_app_ui/view/Explore.dart';
import 'package:fitness_app_ui/view/homescreen.dart';
import 'package:fitness_app_ui/view/onboarding.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:onboarding(),
      routes: {
        'Home':(context) => homescreen(),
        'Explore':(context) => explore(),
      },
    );
  }
}
