import 'package:code/assdemo.dart';
import 'package:code/assignment4.dart';
import 'package:code/seemore.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Netflix(),
    );
  }
}
