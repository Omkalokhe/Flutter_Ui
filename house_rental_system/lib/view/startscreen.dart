import 'package:flutter/material.dart';
import 'package:house_rental_system/view/homescreen.dart';

class startscreen extends StatefulWidget {
  const startscreen({super.key});

  @override
  State<startscreen> createState() => _startscreenState();
}

class _startscreenState extends State<startscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset("assets/startscreen.png"),
          const SizedBox(
            height: 15,
          ),
          const Text(
            "Lets find your Paradise",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 15,
          ),
          const Text(
            "Find your perfect dream space \n with just a few clicks",
            style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w600,
                color: Color.fromRGBO(101, 101, 101, 1)),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 55,
            width: 220,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => homescreen(),
                    ));
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromRGBO(32, 169, 247, 1)),
              child: const Text(
                "Get Started",
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w400,
                    color: Colors.white),
              ),
            ),
          )
          
        ],
      ),
    );
  }
}
