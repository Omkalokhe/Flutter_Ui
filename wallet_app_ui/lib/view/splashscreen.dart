import 'dart:async';
import 'package:flutter/material.dart';
import 'package:wallet_app_ui/view/loginscreen.dart';

class splashscreen extends StatefulWidget {
  const splashscreen({super.key});

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 2),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) =>loginscreen()),
      ),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(87, 50, 191, 1),
        body: Center(
            child: Container(
          // height: 48.16,
          width: 176.86,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: 8,
                    width: 8,
                    margin: EdgeInsets.symmetric(horizontal: 8),
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(253, 194, 40, 1),
                        shape: BoxShape.circle),
                  ),
                  Container(
                    height: 16,
                    width: 16,
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(253, 194, 40, 1),
                        shape: BoxShape.circle),
                  )
                ],
              ),
              Text(
                "Tap’nPay",
                style: TextStyle(
                    fontSize: 34,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        )));
  }
}
