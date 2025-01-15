import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'startscreen.dart';

class bikedetailscreen extends StatefulWidget {
  const bikedetailscreen({super.key});

  @override
  State<bikedetailscreen> createState() => _bikedetailscreenState();
}

class _bikedetailscreenState extends State<bikedetailscreen> {
  final CarouselController carouselController = CarouselController();
  int currentIndex = 0;
  List imageList = [
    {"id": 1, "image_path": 'assets/gtbike.png'},
    {"id": 2, "image_path": 'assets/gtbike.png'},
    {"id": 3, "image_path": 'assets/gtbike.png'},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(36, 44, 59, 1),
      body: Stack(children: [
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
          left: 185,
          child: RotatedBox(
            quarterTurns: 1,
            child: Text(
              "EXTREME",
              style: GoogleFonts.allertaStencil(
                  textStyle: const TextStyle(
                      fontSize: 150,
                      color: Color.fromARGB(
                        30,
                        255,
                        255,
                        255,
                      ))),
            ),
          ),
        ),
        Positioned(
          top: 50,
          left: 18,
          child: Padding(
            padding: const EdgeInsets.only(right: 18),
            child: Row(
              children: [
                Text(
                  "GT BIKE",
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w500,
                          color: Colors.white)),
                ),
                Container(
                    margin: const EdgeInsets.only(left: 160),
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: const LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Color.fromRGBO(55, 182, 233, 1),
                              Color.fromRGBO(72, 92, 236, 1),
                              Color.fromRGBO(75, 76, 237, 1)
                            ])),
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios_new_rounded,
                        color: Colors.white,
                      ),
                    ))
              ],
            ),
          ),
        ),
        Positioned(
          top: 130,
          left: -10,
          child: GestureDetector(
            onTap: () {},
            //this is for moving the image
            child: SizedBox(
              width: 360,
              child: CarouselSlider(
                  items: imageList
                      .map(
                        (item) => Image.asset(
                          item['image_path'],
                          width: double.infinity,
                        ),
                      )
                      .toList(),
                  carouselController: carouselController,
                  options: CarouselOptions(
                    height: 367,
                    viewportFraction: 1,
                    onPageChanged: (index, reason) {
                      setState(() {
                        currentIndex = index;
                      });
                    },
                  )),
            ),
          ),
        ),
        Positioned(
          top: 470,
          left: 160,
          child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: imageList.asMap().entries.map((entry) {
                return GestureDetector(
                  onTap: () => carouselController.animateToPage(entry.key),
                  child: Container(
                    width: 10,
                    height: 10.0,
                    margin: const EdgeInsets.symmetric(
                      horizontal: 1.0,
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: currentIndex == entry.key
                            ? const Color.fromRGBO(0, 0, 0, 1)
                            : const Color.fromRGBO(217, 217, 217, 1)),
                  ),
                );
              }).toList()),
        ),
        Positioned(
            top: 490,
            child: Container(
              height: 354,
              width: 370,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  gradient: const LinearGradient(colors: [
                    Color.fromARGB(80, 53, 63, 84),
                    Color.fromARGB(80, 34, 40, 52)
                  ]),
                  border: Border.all(
                      width: 2,
                      color: const Color.fromARGB(20, 255, 255, 255))),
              child: Stack(
                children: [
                  Positioned(
                    top: 15,
                    left: 23,
                    child: Container(
                      height: 37,
                      width: 108,
                      padding: const EdgeInsets.all(2),
                      decoration: BoxDecoration(
                          boxShadow: const [
                            BoxShadow(
                                offset: Offset(0, 4),
                                color: Color.fromRGBO(0, 0, 0, 0.25),
                                blurRadius: 5)
                          ],
                          borderRadius: BorderRadius.circular(20),
                          gradient: const LinearGradient(colors: [
                            Color.fromARGB(50, 255, 255, 255),
                            Color.fromARGB(0, 255, 255, 255)
                          ])),
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color.fromRGBO(36, 44, 59, 1)),
                        child: Text(
                          "Description",
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15,
                                  color: Colors.white)),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 15,
                    right: 20,
                    child: Container(
                      height: 37,
                      width: 121,
                      padding: const EdgeInsets.all(2),
                      decoration: BoxDecoration(
                          boxShadow: const [
                            BoxShadow(
                                offset: Offset(0, 4),
                                color: Color.fromRGBO(0, 0, 0, 0.25),
                                blurRadius: 5)
                          ],
                          borderRadius: BorderRadius.circular(20),
                          gradient: const LinearGradient(colors: [
                            Color.fromARGB(50, 255, 255, 255),
                            Color.fromARGB(0, 255, 255, 255)
                          ])),
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color.fromRGBO(72, 92, 236, 1)),
                        child: Text(
                          "Specification",
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15,
                                  color: Colors.white)),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 60,
                    child: Container(
                      padding: const EdgeInsets.all(15),
                      width: 360,
                      child: Text(
                        "Lorem ipsum dolor sit amet. Ab tenetur molestias vel rerum cupiditate qui dolores consequatur et asperiores sunt ea magnam dolorem qui consectetur omnis. Ut error voluptas qui tempora provident aut necessitatibus voluptas rem eveniet nulla ut accusantium dignissimos aut facilis perspiciatis a natus quia.",
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 13,
                                color: Color.fromRGBO(255, 255, 255, 1))),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 200,
                    child: Container(
                      alignment: Alignment.center,
                      height: 116,
                      width: 360,
                      decoration: const BoxDecoration(
                          color: Color.fromRGBO(36, 44, 59, 1),
                          boxShadow: [
                            BoxShadow(
                                offset: Offset(0, -8),
                                blurRadius: 20,
                                color: Color.fromRGBO(0, 0, 0, 0.4))
                          ]),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "\$2,599.99",
                            style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 30,
                                    color: Color.fromRGBO(255, 255, 255, 1))),
                          ),
                          Container(
                            height: 50,
                            width: 187,
                            padding: const EdgeInsets.all(1),
                            decoration: BoxDecoration(
                                boxShadow: const [
                                  BoxShadow(
                                      blurStyle: BlurStyle.outer,
                                      offset: Offset(0, 5),
                                      color: Color.fromRGBO(0, 0, 0, 0.25),
                                      blurRadius: 5)
                                ],
                                borderRadius: BorderRadius.circular(20),
                                gradient: const LinearGradient(colors: [
                                  Color.fromARGB(50, 255, 255, 255),
                                  Color.fromARGB(0, 255, 255, 255)
                                ])),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(context, 'Cart');
                              },
                              child: Container(
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    gradient: const LinearGradient(colors: [
                                      Color.fromRGBO(55, 182, 233, 1),
                                      Color.fromRGBO(75, 76, 237, 1)
                                    ])),
                                child: Text(
                                  "Buy Now",
                                  style: GoogleFonts.poppins(
                                      textStyle: const TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 30,
                                          color: Colors.white)),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ))
      ]),
    );
  }
}
