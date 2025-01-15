import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'detailsscreen.dart';

class homescreen extends StatefulWidget {
  const homescreen({super.key});

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(237, 237, 237, 1),
      body: Padding(
        padding: const EdgeInsets.only(left: 22.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 70.0, right: 22),
              child: Row(
                children: [
                  const Text(
                    "Hey Dravid,",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                  const Spacer(),
                  Container(
                    height: 48,
                    width: 48,
                    decoration: const BoxDecoration(shape: BoxShape.circle),
                    child: const CircleAvatar(
                      radius: 24,
                      backgroundImage: AssetImage("assets/dravid.png"),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 60,
              width: 188,
              child: Text(
                "Let’s find your best residence",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 46,
              width: 320,
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Icons.search,
                    ),
                    hintText: "Search your favourite paradise",
                    hintStyle: const TextStyle(
                        fontSize: 13, fontWeight: FontWeight.w500),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide.none)),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Row(
              children: [
                Text(
                  "Most popular",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.only(right: 22.0),
                  child: Text(
                    "See All",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(32, 169, 247, 1)),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 306,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.all(10),
                      width: 211,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(
                                    builder: (context) => detailsscreen(),
                                  ));
                                },
                                child: Container(
                                  height: 196,
                                  width: 198,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        top: 15.0, left: 10),
                                    child: Image.asset(
                                        "assets/night hill villa.png"),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 125,
                                top: 25,
                                child: Container(
                                  padding: const EdgeInsets.all(1.5),
                                  height: 22,
                                  width: 45,
                                  decoration: BoxDecoration(
                                      color: const Color.fromRGBO(
                                          112, 200, 250, 1),
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
                                            color: Color.fromRGBO(
                                                255, 255, 255, 1)),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 15, top: 10),
                            child: Text(
                              "Night Hill Villa",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w600),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(
                              left: 15,
                            ),
                            child: Text(
                              "London,Night Hill",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromRGBO(72, 72, 72, 1)),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 15, top: 10),
                            child: Row(
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
                        ],
                      ),
                    );
                  }),
            ),
            SizedBox(
              height: 15,
            ),
            const Row(children: [
              Text(
                "Nearby your location",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
              ),
              Spacer(),
              Padding(
                padding: EdgeInsets.only(right: 22.0),
                child: Text(
                  "More",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(32, 169, 247, 1)),
                ),
              ),
            ]),
            Container(
              margin: EdgeInsets.only(top: 15, right: 15),
              height: 108,
              width: 346,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.all(8),
                    height: 90,
                    width: 90,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(15)),
                    child: Image.asset("assets/golf villa.png"),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 15.0),
                        child: const Text(
                          "Jumeriah Golf Estates Villa",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w600),
                        ),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on_rounded,
                            color: Color.fromRGBO(90, 90, 90, 1),
                            size: 18,
                          ),
                          Text(
                            "London,Area Plam Jumeriah",
                            style: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.w600,
                                color: Color.fromRGBO(90, 90, 90, 1)),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.bed,
                            color: Color.fromRGBO(90, 90, 90, 1),
                            size: 15,
                          ),
                          Text(
                            " 4 Bedrooms ",
                            style: TextStyle(
                                fontSize: 9,
                                fontWeight: FontWeight.w600,
                                color: Color.fromRGBO(90, 90, 90, 1)),
                          ),
                          Icon(
                            Icons.bathtub_rounded,
                            color: Color.fromRGBO(90, 90, 90, 1),
                            size: 15,
                          ),
                          Text(
                            " 5 Bathrooms ",
                            style: TextStyle(
                                fontSize: 9,
                                fontWeight: FontWeight.w600,
                                color: Color.fromRGBO(90, 90, 90, 1)),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 120),
                        child: Row(
                          children: [
                            // Spacer(),
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
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
