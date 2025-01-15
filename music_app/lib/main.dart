import 'package:flutter/material.dart';
import 'package:music_app/view/galleryscreen.dart';
import 'package:music_app/view/homescreen.dart';
import 'package:music_app/view/playerscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
        debugShowCheckedModeBanner: false, home: const HomeScreen(),
         routes: {
        'Home': (context) =>  const HomeScreen(),
        'Gallery': (context) => const gallery(),
        'Player': (context) =>const player(1)
      },
        );
  }
}
