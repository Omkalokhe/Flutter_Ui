import 'dart:ui';
import 'package:fitness_app_ui/view/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class onboarding extends StatefulWidget {
  const onboarding({super.key});

  @override
  State<onboarding> createState() => _onboardingState();
}

class _onboardingState extends State<onboarding> {
  final CarouselController carouselController = CarouselController();
  int currentIndex = 0;
  List imageList = [
    {"id": 1, "image_path": 'assets/onboarding.png'},
    {"id": 2, "image_path": 'assets/onboarding.png'},
    {"id": 3, "image_path": 'assets/onboarding.png'},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              SizedBox(
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
                      autoPlay: true,
                      height: 522,
                      viewportFraction: 1,
                      onPageChanged: (index, reason) {
                        setState(() {
                          currentIndex = index;
                        });
                      },
                    )),
              ),
              Positioned.fill(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 193,
                    child: Stack(
                      children: [
                        // Gradient mask
                        Positioned.fill(
                          child: Align(
                            alignment: Alignment.center,
                            child: Container(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    Color.fromRGBO(255, 255, 255, 0),
                                    Color.fromRGBO(255, 255, 255, 1),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        // Blurred area
                        // Positioned.fill(
                        //   child: Align(
                        //     alignment: Alignment.centerRight,
                        //     child: ClipRect(
                        //       child: BackdropFilter(
                        //         filter:
                        //             ImageFilter.blur(sigmaX: 1.0, sigmaY: 1.0),
                        //         child: Container(color: Colors.transparent),
                        //       ),
                        //     ),
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40),
            child: SizedBox(
              width: 270,
              child: Text(
                "   Wherever You Are Health Is Number One",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w800),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "There is no instant way to a healthy life",
            style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w400,
                color: Color.fromRGBO(25, 33, 38, 0.5)),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            width: 65,
            height: 5,
            decoration: BoxDecoration(
                color: Color.fromRGBO(25, 33, 38, 1),
                borderRadius: BorderRadius.circular(5)),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: imageList.asMap().entries.map((entry) {
                  return GestureDetector(
                    onTap: () => carouselController.animateToPage(entry.key),
                    child: Container(
                      width: currentIndex == entry.key ? 21 : 0,
                      height: 3.0,
                      margin: const EdgeInsets.only(right: 14),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: currentIndex == entry.key
                              ? const Color.fromRGBO(187, 242, 70, 1)
                              : const Color.fromRGBO(217, 217, 217, 1)),
                    ),
                  );
                }).toList()),
          ),
          SizedBox(
            height: 40,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  fixedSize: Size(330, 56),
                  backgroundColor: Color.fromRGBO(25, 33, 38, 1)),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>homescreen()
                    ));
              },
              child: Text(
                "Get Started",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Colors.white),
              ))
        ],
      ),
    );
  }
}
