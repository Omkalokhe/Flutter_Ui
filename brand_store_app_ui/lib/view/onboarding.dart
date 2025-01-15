import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class onboarding extends StatefulWidget {
  const onboarding({super.key});

  @override
  State<onboarding> createState() => _onboardingState();
}

class _onboardingState extends State<onboarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset("assets/onboarding.png")),
        const SizedBox(
          height: 30,
        ),
        SizedBox(
          height: 120,
          width: 301,
          child: Text("Find The \nBest Collections",
              style: GoogleFonts.imprima(
                  textStyle: const TextStyle(
                fontSize: 42,
              ))),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 32.0),
          child: Text(
              "Get your dream item easily with FashionHub and get other intersting offer",
              style: GoogleFonts.imprima(
                  textStyle: const TextStyle(
                      fontSize: 15, color: Color.fromRGBO(121, 119, 128, 1)))),
        ),
        const SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              alignment: Alignment.center,
              height: 62,
              width: 150,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(90),
                  border: Border.all(color: Colors.black)),
              child: Text("Sign Up",
                  style: GoogleFonts.imprima(
                      textStyle: const TextStyle(
                    fontSize: 18,
                  ))),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, 'Home');
              },
              child: Container(
                alignment: Alignment.center,
                height: 62,
                width: 150,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(255, 122, 0, 1),
                  borderRadius: BorderRadius.circular(90),
                ),
                child: Text("Sign In",
                    style: GoogleFonts.imprima(
                        textStyle: const TextStyle(
                            fontSize: 18, color: Colors.white))),
              ),
            )
          ],
        )
      ]),
      backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
    );
  }
}
