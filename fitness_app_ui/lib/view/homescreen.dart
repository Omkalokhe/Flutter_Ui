import 'package:fitness_app_ui/view/bottomnavigation.dart';
import 'package:fitness_app_ui/view/workout.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class homescreen extends StatefulWidget {
  const homescreen({super.key});

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  

  List Workouts = [
    {
      'name': "Lower Body",
      'kcal': " 500 Kcal",
      'min': " 50 Min",
      'image': "assets/workout1.png"
    },
    {
      'name': "Hand",
      'kcal': " 500 Kcal",
      'min': " 50 Min",
      'image': "assets/workout1.png"
    }
  ];

  List Plan = [
    {
      'name': "Push Up",
      'detail': "100 Push up a day",
      'for': "Intermediate",
      'image': "assets/pushup.png"
    },
    {
      'name': "Sit Up",
      'detail': "20 sit up a day",
      'for': "Beginner",
      'image': "assets/situp.png"
    },
    {
      'name': " Knee Push Up",
      'detail': "50 Knee push up a day",
      'for': "Beginner",
      'image': "assets/kneepushup.png"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(247, 246, 250, 1),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, top: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Good Morning 🔥",
              style: GoogleFonts.lato(
                  textStyle: TextStyle(fontWeight: FontWeight.w600)),
            ),
            Text(
              "Pramuditya Uzumaki",
              style: GoogleFonts.lato(
                  textStyle:
                      TextStyle(fontSize: 24, fontWeight: FontWeight.w800)),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, right: 20, bottom: 20),
              child: TextField(
                textAlignVertical: TextAlignVertical.center,
                decoration: InputDecoration(
                    isCollapsed: true,
                    hintText: "Search",
                    hintStyle: GoogleFonts.lato(
                        textStyle: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(25, 33, 38, 0.5))),
                    filled: true,
                    fillColor: Colors.white,
                    prefixIcon: Icon(Icons.search,
                        color: Color.fromRGBO(140, 144, 147, 1), size: 16),
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(12))),
              ),
            ),
            Text(
              "Popular Workouts",
              style: GoogleFonts.lato(
                  textStyle:
                      TextStyle(fontSize: 18, fontWeight: FontWeight.w700)),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 174,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: Workouts.length,
                itemBuilder: (context, index) {
                  return Container(
                      margin: EdgeInsets.only(right: 20),
                      width: 280,
                      height: 174,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(23),
                      ),
                      child: Stack(
                        children: [
                          Image.asset(Workouts[index]['image']),
                          Positioned.fill(
                            child: Align(
                              alignment: Alignment.topCenter,
                              child: Container(
                                height: 174,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(23),
                                  gradient: LinearGradient(
                                    begin: Alignment.centerRight,
                                    end: Alignment.centerLeft,
                                    colors: [
                                      Color.fromRGBO(0, 0, 0, 0),
                                      Color.fromRGBO(0, 0, 0, 0.51),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                              top: 20,
                              left: 20,
                              child: Text(
                                Workouts[index]['name'],
                                style: GoogleFonts.lato(
                                    textStyle: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.white)),
                              )),
                          Positioned(
                              top: 50,
                              left: 20,
                              child: Text(
                                "Training",
                                style: GoogleFonts.lato(
                                    textStyle: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.white)),
                              )),
                          Positioned(
                              top: 100,
                              left: 20,
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 8, vertical: 4),
                                decoration: BoxDecoration(
                                    color: Color.fromRGBO(255, 255, 255, 0.8),
                                    borderRadius: BorderRadius.circular(9)),
                                child: Row(
                                  children: [
                                    ImageIcon(
                                      AssetImage(
                                        "assets/Kcal.png",
                                      ),
                                      size: 14,
                                    ),
                                    Text(
                                      Workouts[index]['kcal'],
                                      style: GoogleFonts.lato(
                                          textStyle: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400,
                                              color: Colors.black)),
                                    )
                                  ],
                                ),
                              )),
                          Positioned(
                              top: 130,
                              left: 20,
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 8, vertical: 4),
                                decoration: BoxDecoration(
                                    color: Color.fromRGBO(255, 255, 255, 0.8),
                                    borderRadius: BorderRadius.circular(9)),
                                child: Row(
                                  children: [
                                    ImageIcon(
                                      AssetImage(
                                        "assets/watch.png",
                                      ),
                                      size: 14,
                                    ),
                                    Text(
                                      Workouts[index]['min'],
                                      style: GoogleFonts.lato(
                                          textStyle: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400,
                                              color: Colors.black)),
                                    )
                                  ],
                                ),
                              )),
                          Positioned(
                            top: 70,
                            right: 20,
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const workout(),
                                    ));
                              },
                              child: Container(
                                width: 38,
                                height: 38,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color.fromRGBO(187, 242, 70, 1)),
                                child: Icon(
                                  Icons.play_arrow,
                                  size: 20,
                                ),
                              ),
                            ),
                          )
                        ],
                      ));
                },
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Today Plan",
              style: GoogleFonts.lato(
                  textStyle: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
              )),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: Plan.length,
                itemBuilder: (context, index) {
                  return Container(
                    width: 350,
                    height: 120,
                    margin: EdgeInsets.only(right: 20, bottom: 20),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(23)),
                    child: Stack(
                      children: [
                        Positioned(
                          top: 1,
                          right: 10,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 2, horizontal: 8),
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(25, 33, 38, 1),
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(6),
                                    bottomRight: Radius.circular(6))),
                            child: Text(
                              Plan[index]['for'],
                              style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                      fontSize: 10, color: Colors.white)),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(right: 10),
                                child: Image.asset(Plan[index]['image']),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    Plan[index]['name'],
                                    style: GoogleFonts.poppins(
                                        textStyle: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                    )),
                                  ),
                                  Text(
                                    Plan[index]['detail'],
                                    style: GoogleFonts.poppins(
                                        textStyle: TextStyle(
                                      color: Color.fromRGBO(25, 33, 38, 0.5),
                                      fontWeight: FontWeight.w400,
                                      fontSize: 13,
                                    )),
                                  ),
                                  SizedBox(
                                    width: 190,
                                    height: 16,
                                    child: LinearProgressIndicator(
                                      valueColor: AlwaysStoppedAnimation(
                                          Color.fromRGBO(187, 242, 70, 1)),
                                      backgroundColor:
                                          Color.fromRGBO(242, 242, 242, 1),
                                      semanticsLabel: "45%",
                                      borderRadius: BorderRadius.circular(3),
                                      value: 0.4,
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    bottomNavigationBar: mybottomNavigationBar(0),
    );
  }
}
