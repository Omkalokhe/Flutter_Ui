import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:wallet_app_ui/view/bottomnavigation.dart';

import 'cardpayment.dart';

class cards extends StatefulWidget {
  const cards({super.key});

  @override
  State<cards> createState() => _cardsState();
}

class _cardsState extends State<cards> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 20, top: 50, right: 20),
            child: Row(
              children: [
                Text(
                  "My Cards",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                ),
                Spacer(),
                Text(
                  "Add card",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(29, 98, 202, 1)),
                ),
                Icon(
                  Icons.add,
                  color: Color.fromRGBO(29, 98, 202, 1),
                )
              ],
            ),
          ),
          Expanded(
            child: Stack(
              children: [
                Positioned(
                  top: 32,
                  left: 16,
                  child: Container(
                    height: 164,
                    width: 328,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(230, 221, 255, 1),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Padding(
                      padding:
                          const EdgeInsets.only(top: 16, left: 12, right: 12),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Abdullah Ghatasheh",
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w600),
                          ),
                          Spacer(),
                          Text(
                            "**** 2312",
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 72,
                  left: 16,
                  child: Container(
                    height: 164,
                    width: 328,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(111, 69, 233, 1),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Padding(
                      padding:
                          const EdgeInsets.only(top: 16, left: 12, right: 12),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Abdullah Ghatasheh",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
                          Spacer(),
                          Text(
                            "**** 5432",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 112,
                  left: 16,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => cardpayment(),
                          ));
                    },
                    child: Container(
                      height: 196,
                      width: 328,
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(39, 6, 133, 1),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Stack(children: [
                        Positioned(
                          bottom: -100,
                          right: 0,
                          child: Container(
                            height: 192,
                            width: 192,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(111, 69, 233, 1),
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 16, left: 12, right: 12),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Abdullah Ghatasheh",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white),
                              ),
                              Spacer(),
                              Text(
                                "**** 3245",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          top: -90,
                          left: -50,
                          child: Container(
                            height: 192,
                            width: 192,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                    color: Color.fromRGBO(111, 69, 233, 1))),
                          ),
                        ),
                        Positioned(
                          bottom: -60,
                          right: -70,
                          child: Container(
                            height: 192,
                            width: 192,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                    color: Color.fromRGBO(253, 194, 40, 1))),
                          ),
                        ),
                        Positioned(
                            bottom: 20,
                            right: 20,
                            child: ImageIcon(
                              AssetImage("assets/wifi.png"),
                              color: Colors.white,
                            )),
                        Positioned(
                          bottom: 60,
                          left: 20,
                          child: Text(
                            "Balance",
                            style: TextStyle(
                                fontSize: 12,
                                color: Color.fromRGBO(230, 221, 255, 1)),
                          ),
                        ),
                        Positioned(
                          bottom: 30,
                          left: 20,
                          child: Text(
                            "\$2,354",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 21,
                                color: Color.fromRGBO(255, 255, 255, 1)),
                          ),
                        )
                      ]),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: mybottomNavigationBar(2),
    );
  }
}
