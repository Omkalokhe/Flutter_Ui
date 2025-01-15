import 'package:flutter/material.dart';
import 'package:wallet_app_ui/view/cards.dart';
import 'package:wallet_app_ui/view/history.dart';
import 'package:wallet_app_ui/view/homescreen.dart';
import 'package:wallet_app_ui/view/more.dart';
import 'package:wallet_app_ui/view/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const splashscreen(),
      routes: {
        'Home':(context) => const homescreen(),
        'History':(context) => const history(),
        'More':(context) => const morescreen(),
        'Cards':(context) => const cards()
      },
    );
  }
}
