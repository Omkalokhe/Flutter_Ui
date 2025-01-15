import 'dart:async';
import 'package:flutter/material.dart';
import 'package:pet_care_ui/view/loginscreen.dart';

class flashscreen extends StatefulWidget {
  const flashscreen({super.key});

  @override
  State<flashscreen> createState() => _flashscreenState();
}

class _flashscreenState extends State<flashscreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 2),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const loginscreen()),
      ),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(245, 146, 69, 1),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/flashscreen.png"),
            SizedBox(
              height: 30,
            ),
            const Text(
              "PetGuardian",
              style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
            ),
            SizedBox(
              height: 10 ,
            ),
            const Text(
              "'Your Pets' Lifelong Protector",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
