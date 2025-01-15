import 'package:flutter/material.dart';
import 'package:pet_care_ui/view/grooming.dart';
import 'package:pet_care_ui/view/homescreen.dart';
import 'package:pet_care_ui/view/notifications.dart';
import 'package:pet_care_ui/view/servicescreen.dart';
import 'package:pet_care_ui/view/shopscreen.dart';
import 'package:pet_care_ui/view/training.dart';
import 'package:pet_care_ui/view/veterinary.dart';
import 'view/flashscreen.dart';
import 'view/loginscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: flashscreen(),
      routes: {
        'Flashscreen': (context) => const flashscreen(),
        'Login': (context) => const loginscreen(),
        'Home': (context) => const homescreen(),
        'Notifications': (context) => const notifications(),
        'Veterinary': (context) => const veterinary(),
        'Grooming': (context) => const grooming(),
        'Training': (context) => const training(),
        'Service': (context) => const servicescreen(),
        'Shop': (context) => const shopscreen()
      },
    );
  }
}
