import 'package:action_slider/action_slider.dart';
import 'package:bicycle_app_ui/view/homescreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class startscreen extends StatefulWidget {
  const startscreen({super.key});

  @override
  State<startscreen> createState() => _startscreenState();
}

class _startscreenState extends State<startscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(36, 44, 59, 1),
      body: Stack(
        children: [
          Positioned(
            top: 300,
            left: -15,
            child: Container(
              height: 597,
              width: 445,
              child: CustomPaint(
                painter: DiagonalPainter(),
              ),
            ),
          ),
          Positioned(
            top: 90,
            left: 190,
            child: RotatedBox(
              quarterTurns: 1,
              child: Text(
                "EXTREME",
                style: GoogleFonts.allertaStencil(
                    textStyle: const TextStyle(
                        fontSize: 150,
                        color: Color.fromARGB(
                          50,
                          255,
                          255,
                          255,
                        ))),
              ),
            ),
          ),
          Positioned(top: 50, left: 130, child: Image.asset("assets/logo.png")),
          Positioned(
              top: 270,
              left: -16,
              child: Image.asset(
                "assets/startscreenbicycle.png",
                height: 410,
                width: 410,
              )),
          Positioned(
            top: 700,
            left: 160,
            child: ActionSlider.standard(
              boxShadow: [
                BoxShadow(
                    blurStyle: BlurStyle.outer,
                    color: Color.fromARGB(25, 0, 0, 0),
                    offset: Offset(-3, 4),
                    blurRadius: 4)
              ],
              onTap: (controller, pos) {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) => homescreen(),
                ));
              },
              backgroundColor: Color.fromRGBO(36, 44, 59, 1),
              customForegroundBuilder: (p0, p1, p2) {
                return Container(
                  height: 70,
                  width: 70,
                  alignment: Alignment.center,
                  margin: EdgeInsets.all(5),
                  decoration: const BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Color.fromRGBO(239, 186, 51, 1),
                            blurRadius: 5,
                            spreadRadius: 5)
                      ],
                      shape: BoxShape.circle,
                      color: Color.fromRGBO(75, 76, 237, 1)),
                  child: Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Colors.white,
                  ),
                );
              },
              width: 250,
              child: const Text(
                'Get Start',
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
              action: (controller) async {
                controller.loading();
                await Future.delayed(const Duration(seconds: 1));
                controller.success();
                await Future.delayed(const Duration(seconds: 1));
                controller.reset();
              },
            ),
          ),
        ],
      ),
    );
  }
}

class DiagonalPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();

    Path path1 = Path();
    path1.moveTo(size.width, 0);
    path1.lineTo(0, size.height / 3);
    path1.lineTo(0, size.height);
    path1.lineTo(size.width, size.height);
    path1.close();
    paint.color = const Color.fromRGBO(75, 76, 237, 1);
    canvas.drawPath(path1, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
