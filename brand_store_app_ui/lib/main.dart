import 'package:brand_store_app_ui/view/cartscreen.dart';
import 'package:brand_store_app_ui/view/checkoutscreen.dart';
import 'package:brand_store_app_ui/view/detailsscreen.dart';
import 'package:brand_store_app_ui/view/homescreen.dart';
import 'package:brand_store_app_ui/view/onboarding.dart';
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
      home: onboarding(),
      routes: {
        'Home': (context) => const homescreen(),
        'Details': (context) => const detailscreen(),
        'Cart': (context) => const cartscreen(),
        'Checkout': (context) => const checkoutscreen(),
      },
    );
  }
}
