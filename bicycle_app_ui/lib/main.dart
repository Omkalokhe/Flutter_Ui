import 'package:bicycle_app_ui/view/bikedetailscreen.dart';
import 'package:bicycle_app_ui/view/homescreen.dart';
import 'package:bicycle_app_ui/view/myshoppingcart.dart';
import 'package:bicycle_app_ui/view/startscreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: startscreen(),
      routes: {
        'Home':(context) => const homescreen(),
        'Detail':(context) => const bikedetailscreen(),
        'Cart':(context) => const myshoppingcart()
      },
    );
  }
}
