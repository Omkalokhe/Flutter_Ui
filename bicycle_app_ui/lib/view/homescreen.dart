import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'startscreen.dart';

class homescreen extends StatefulWidget {
  const homescreen({super.key});

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  String? selectedLogo = "0";
  List logo = [
    "assets/bicyclelogo.png",
    "assets/helmetlogo.png",
    "assets/handglusalogo.png",
    "assets/bottlelogo.png",
  ];

  List roadbike = [
    "assets/roadbike1.png",
    "assets/roadbike2.png",
    "assets/roadbike3.png",
    "assets/roadbike4.png",
  ];
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
                            10,
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
                      "Choose Your \nBicycle",
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w500,
                              color: Colors.white)),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 60),
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
                      child: Image.asset(
                        "assets/search-normal.png",
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
                top: 145,
                left: 20,
                child: Container(
                  width: 320,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: const LinearGradient(colors: [
                        Color.fromRGBO(53, 63, 84, 0.6),
                        Color.fromRGBO(34, 40, 52, 0.6)
                      ]),
                      boxShadow: const [
                        BoxShadow(
                            offset: Offset(4, 7),
                            blurRadius: 10,
                            color: Color.fromRGBO(0, 0, 0, 0.5))
                      ],
                      border: Border.all(
                          width: 2,
                          color: const Color.fromARGB(
                            20,
                            255,
                            255,
                            255,
                          ))),
                  child: Stack(
                    children: [
                      Image.asset(
                        "assets/extremebicycle.png",
                        height: 234,
                        width: 190,
                      ),
                      Positioned(
                        top: 10,
                        left: 160,
                        child: Text(
                          "EXTREME",
                          style: GoogleFonts.allertaStencil(
                              textStyle: const TextStyle(
                                  fontSize: 32, color: Colors.white)),
                        ),
                      ),
                      Positioned(
                        bottom: 10,
                        right: 10,
                        child: Text(
                          "30% OFF",
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 32,
                                  color: Colors.white)),
                        ),
                      ),
                    ],
                  ),
                )),
            Positioned(
                top: 408,
                left: 20,
                child: SizedBox(
                  height: 50,
                  width: MediaQuery.of(context).size.width - 40,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: logo.length,
                    itemBuilder: (context, index) {
                      bool isSelected = selectedLogo == logo[index];
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedLogo = logo[index];
                          });
                        },
                        child: Container(
                          margin: const EdgeInsets.only(right: 20),
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              gradient: isSelected
                                  ? const LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                      colors: [
                                          Color.fromRGBO(55, 182, 233, 1),
                                          Color.fromRGBO(72, 92, 236, 1),
                                          Color.fromRGBO(75, 76, 237, 1)
                                        ])
                                  : const LinearGradient(colors: [
                                      Color.fromRGBO(255, 255, 255, 1),
                                      Color.fromRGBO(161, 161, 161, 1)
                                    ])),
                          child: Image.asset(
                            logo[index],
                            color: Colors.black,
                          ),
                        ),
                      );
                    },
                  ),
                )),
            Positioned(
                top: 450,
                left: 20,
                right: 20, // Added line to bound the grid view
                bottom: 0,
                child: Column(
                  children: [
                    Expanded(
                      child: MasonryGridView.builder(
                        mainAxisSpacing: 15,
                        crossAxisSpacing: 15,
                        itemCount: roadbike.length,
                        gridDelegate:
                            const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2),
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, 'Detail');
                            },
                            child: Container(
                              margin: const EdgeInsets.only(right: 5),
                              decoration: BoxDecoration(
                                  boxShadow: const [
                                    BoxShadow(
                                        color: Color.fromARGB(25, 0, 0, 0),
                                        offset: Offset(4, 4),
                                        blurRadius: 10)
                                  ],
                                  borderRadius: BorderRadius.circular(20),
                                  gradient: const LinearGradient(colors: [
                                    Color.fromARGB(60, 53, 63, 84),
                                    Color.fromARGB(60, 34, 40, 52)
                                  ]),
                                  border: Border.all(
                                      width: 1,
                                      color: const Color.fromARGB(
                                        20,
                                        255,
                                        255,
                                        255,
                                      ))),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset(roadbike[index]),
                                    Text(
                                      "Road Bike",
                                      style: GoogleFonts.poppins(
                                          textStyle: const TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 15,
                                              color: Color.fromRGBO(
                                                  195, 195, 195, 1))),
                                    ),
                                    Text(
                                      "Kiross",
                                      style: GoogleFonts.poppins(
                                          textStyle: const TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 20,
                                              color: Colors.white)),
                                    ),
                                    Text(
                                      "\$1,599.99",
                                      style: GoogleFonts.poppins(
                                          textStyle: const TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 15,
                                              color: Color.fromRGBO(
                                                  195, 195, 195, 1))),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                )),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: Colors.black,
          selectedItemColor: Color.fromRGBO(75, 76, 237, 1),
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Container(
                width: 55,
                decoration: BoxDecoration(
                    gradient: const LinearGradient(colors: [
                      Color.fromRGBO(55, 182, 233, 1),
                      Color.fromRGBO(75, 76, 237, 1)
                    ]),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(13),
                        topRight: Radius.circular(13))),
                child: Image.asset(
                  "assets/homelogo.png",
                ),
              ),
              label: '',
              backgroundColor: Color.fromRGBO(36, 44, 59, 1),
            ),
            BottomNavigationBarItem(
              icon: Image.asset("assets/shoppinglogo.png"),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Image.asset("assets/walletlogo.png"),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Image.asset("assets/userlogo.png"),
              label: '',
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          backgroundColor: Color.fromRGBO(36, 44, 59, 1),
        ));
  }
}
