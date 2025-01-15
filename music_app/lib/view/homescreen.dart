import 'package:flutter/material.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(19, 19, 19, 1),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Positioned(top: -10, child: Image.asset("assets/homepage.png")),
          const Positioned(
            top: 440,
            left: 44,
            child: SizedBox(
              height: 150,
              width: 285,
              child: Text(
                "Dancing between The shadows \nOf rhythm ",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 36,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ),
          const Positioned(
            top: 731,
            left: 84,
            child: Opacity(
              opacity: 0.43,
              child: SizedBox(
                height: 150,
                width: 227,
                child: Text(
                  "by continuing you agree to terms\n  of services and  Privacy policy",
                  style: TextStyle(
                    color: Color.fromRGBO(203, 200, 200, 1),
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
              top: 600,
              left: 55,
              child: GestureDetector(
                onTap: () {
                 Navigator.pushNamed(context, 'Gallery');
                },
                child: Container(
                  alignment: Alignment.center,
                  height: 47,
                  width: 261,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(255, 46, 0, 1),
                      borderRadius: BorderRadius.circular(19)),
                  child: const Text(
                    "Get Started",
                    style: TextStyle(
                        color: Color.fromRGBO(19, 19, 19, 1),
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              )),
          Positioned(
              top: 663,
              left: 55,
              child: Container(
                alignment: Alignment.center,
                height: 47,
                width: 261,
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Color.fromRGBO(255, 46, 0, 1),
                    ),
                    color: Color.fromRGBO(19, 19, 19, 1),
                    borderRadius: BorderRadius.circular(19)),
                child: const Text(
                  "Continue with Email",
                  style: TextStyle(
                      color: Color.fromRGBO(255, 46, 0, 1),
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                ),
              )),
        ],
      ),
    );
  }
}
