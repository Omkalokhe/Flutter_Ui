import 'package:fitness_app_ui/view/bottomnavigation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class explore extends StatefulWidget {
  const explore({super.key});

  @override
  State<explore> createState() => _exploreState();
}

class _exploreState extends State<explore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(23)),
              child: Stack(
                children: [
                  Image.asset(
                    "assets/explore1.png",
                    height: 180,
                  ),
                  Positioned.fill(
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        width: 230,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(23),
                          gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [
                              Color.fromRGBO(60, 60, 60, 1),
                              Color.fromRGBO(0, 0, 0, 0),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                      left: 20,
                      top: 25,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Best Quarantine\nWorkout",
                            style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w700,
                                color: Colors.white),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Row(
                            children: [
                              Text(
                                "See more",
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Color.fromRGBO(187, 242, 70, 1),
                                    fontWeight: FontWeight.w700),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(
                                Icons.arrow_forward_ios_rounded,
                                size: 12,
                                color: Color.fromRGBO(187, 242, 70, 1),
                              )
                            ],
                          )
                        ],
                      ))
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: mybottomNavigationBar(1),
    );
  }
}
