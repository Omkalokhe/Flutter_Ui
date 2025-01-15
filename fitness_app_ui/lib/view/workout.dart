import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class workout extends StatefulWidget {
  const workout({super.key});

  @override
  State<workout> createState() => _workoutState();
}

class _workoutState extends State<workout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(25, 33, 38, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(25, 33, 38, 1),
        centerTitle: true,
        title: const Text(
          "Workout",
          style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.w500, color: Colors.white),
        ),
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Colors.white,
            size: 24,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              clipBehavior: Clip.none,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(32),
              ),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(32),
                          child: Image.asset("assets/weight-loss.png"))),
                  Positioned.fill(
                      child: Align(
                          alignment: Alignment.bottomCenter,
                          child: SizedBox(
                              height: 134,
                              child: Stack(children: [
                                // Gradient mask
                                Positioned.fill(
                                    child: Align(
                                        child: Container(
                                            decoration: const BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                    bottomLeft:
                                                        Radius.circular(32),
                                                    bottomRight:
                                                        Radius.circular(32)),
                                                gradient: LinearGradient(
                                                  begin: Alignment.topCenter,
                                                  end: Alignment.bottomCenter,
                                                  colors: [
                                                    Color.fromRGBO(
                                                        104, 104, 104, 0),
                                                    Color.fromRGBO(
                                                        29, 29, 29, 1),
                                                  ],
                                                )))))
                              ])))),
                  Positioned(
                      left: 40,
                      top: 200,
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 15,
                        ),
                        height: 64,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(25, 33, 38, 0.3),
                            border: Border.all(
                                color: Color.fromRGBO(187, 242, 70, 1),
                                width: 0.5),
                            borderRadius: BorderRadius.circular(15)),
                        child: Row(
                          children: [
                            Container(
                                margin: EdgeInsets.only(right: 10),
                                height: 32,
                                width: 32,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Color.fromRGBO(187, 242, 70, 1)),
                                child: ImageIcon(
                                  AssetImage(
                                    "assets/time.png",
                                  ),
                                  size: 24,
                                )),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Time",
                                  style: TextStyle(
                                      fontSize: 10, color: Colors.white),
                                ),
                                Text(
                                  "20 min",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                      color: Color.fromRGBO(187, 242, 70, 1)),
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 12),
                              child: VerticalDivider(
                                color: Color.fromRGBO(255, 255, 255, 0.25),
                                thickness: 1,
                                width: 38,
                              ),
                            ),
                            Container(
                                margin: EdgeInsets.only(right: 10),
                                height: 32,
                                width: 32,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Color.fromRGBO(187, 242, 70, 1)),
                                child: ImageIcon(
                                  AssetImage(
                                    "assets/burn.png",
                                  ),
                                  size: 24,
                                )),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Burn",
                                  style: TextStyle(
                                      fontSize: 10, color: Colors.white),
                                ),
                                Text(
                                  "95 kcal",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                      color: Color.fromRGBO(187, 242, 70, 1)),
                                )
                              ],
                            ),
                          ],
                        ),
                      ))
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              "Lower Body Training",
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w800,
                  color: Colors.white),
            ),
            Text(
                "The lower abdomen and hips are the most difficult areas of the body to reduce when we are on a diet. Even so, in this area, especially the legs as a whole, you can reduce weight even if you don't use tools.",
                style: GoogleFonts.lato(
                  textStyle: TextStyle(
                      fontSize: 15, color: Color.fromRGBO(255, 255, 255, 0.5)),
                )),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Text(
                  "Rounds",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w800,
                      color: Colors.white),
                ),
                Spacer(),
                Row(
                  children: [
                    Text(
                      "1",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                    Text(
                      "/8",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                  ],
                )
              ],
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Container(
                    padding: EdgeInsets.only(left: 10, right: 20),
                    height: 74,
                    margin: EdgeInsets.only(bottom: 20),
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(56, 64, 70, 1),
                        borderRadius: BorderRadius.circular(15)),
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(13),
                          child: Image.asset("assets/Rounds.png"),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "Jumping Jacks",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white),
                            ),
                            Text(
                              "00.30",
                              style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromRGBO(255, 255, 255, 0.5)),
                            ),
                          ],
                        ),
                        Spacer(),
                        Container(
                          width: 28,
                          height: 28,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color.fromRGBO(25, 33, 38, 1)),
                          child: Icon(
                            Icons.play_arrow,
                            color: Color.fromRGBO(187, 242, 70, 1),
                            size: 15,
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
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: SizedBox(
        width: 320,
        child: FloatingActionButton(
          backgroundColor: Color.fromRGBO(187, 242, 70, 1),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
          onPressed: () {},
          child: Text(
            "Lets Workout",
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.w600, color: Colors.black),
          ),
        ),
      ),
    );
  }
}
