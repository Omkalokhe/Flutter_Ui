import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class detailsscreen extends StatefulWidget {
  const detailsscreen({super.key});

  @override
  State<detailsscreen> createState() => _detailsscreenState();
}

class _detailsscreenState extends State<detailsscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(237, 237, 237, 1),
      body: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: Row(
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: const Icon(Icons.arrow_back_ios_new_rounded)),
                  const SizedBox(
                    width: 110,
                  ),
                  const Text(
                    "Details",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
            Stack(
              children: [
                Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                  height: 244,
                  width: 346,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(20)),
                  child: Image.asset("assets/detailscreen.png"),
                ),
                Positioned(
                  left: 40,
                  top: 40,
                  child: Container(
                    padding: const EdgeInsets.all(1.5),
                    height: 22,
                    width: 45,
                    decoration: BoxDecoration(
                        color: const Color.fromRGBO(112, 200, 250, 1),
                        borderRadius: BorderRadius.circular(15)),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.star_rate_rounded,
                          size: 15,
                          color: Color.fromRGBO(251, 227, 12, 1),
                        ),
                        Text(
                          "4.9",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(255, 255, 255, 1)),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(left: 25.0),
              child: Text(
                "Night Hill Villa",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 15.0),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "\$5900",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Color.fromRGBO(32, 169, 247, 1)),
                  ),
                  Text(
                    " / Month",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(72, 72, 72, 1)),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 25.0),
              child: Text(
                "London,Night Hill",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 141,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Container(
                    margin:
                        const EdgeInsets.only(left: 25, top: 10, bottom: 10),
                    width: 112,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15)),
                    child: const Padding(
                      padding: EdgeInsets.only(left: 10.0, top: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.bed,
                            size: 30,
                            color: Colors.black,
                          ),
                          Text(
                            "Bedrooms",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Color.fromRGBO(90, 90, 90, 1)),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "5",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            Stack(clipBehavior: Clip.none, children: [
              const Padding(
                padding: EdgeInsets.only(left: 25.0, right: 15),
                child: SizedBox(
                  width: 346,
                  child: Text(
                    "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet. Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet",
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ),
              Positioned(
                top: 100,
                child: Container(
                  height: 113,
                  width: 430,
                  decoration:
                      const BoxDecoration(color: Colors.white, boxShadow: [
                    BoxShadow(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        offset: Offset(-10, 0),
                        blurRadius: 25,
                        spreadRadius: 25)
                  ]),
                ),
              ),
              Positioned(
                left: 75,
                top: 120,
                child: SizedBox(
                  height: 55,
                  width: 220,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromRGBO(32, 169, 247, 1)),
                      onPressed: () {},
                      child: Text(
                        "Rent Now",
                        style: TextStyle(fontSize: 22, color: Colors.white),
                      )),
                ),
              )
            ])
          ],
        ),
      ),
    );
  }
}
