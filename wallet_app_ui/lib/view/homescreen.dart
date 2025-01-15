import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:wallet_app_ui/view/bottomnavigation.dart';

import 'settingscreen.dart';
import 'transferscreen.dart';

class homescreen extends StatefulWidget {
  const homescreen({super.key});

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  List latest_transaction = [
    {
      'name': "Walmart",
      'image': "assets/Wallmart.png",
      'date': "Today 12.32",
      'price': "-\$35.23",
      Color: const Color.fromRGBO(184, 50, 50, 1)
    },
    {
      'name': "Top up",
      'image': "assets/Topup.png",
      'date': "Yesterday 02.12",
      'price': "+\$430.00",
      Color: const Color.fromRGBO(40, 155, 79, 1)
    },
    {
      'name': "Netflix",
      'image': "assets/Netflix.png",
      'date': "Dec 24 13.53",
      'price': "-\$13.00",
      Color: const Color.fromRGBO(184, 50, 50, 1)
    },
  ];

  List recent_transfer = [
    {'name': "Add", 'image': "assets/add-line.png"},
    {'name': "Ali", 'image': "assets/Profile_photo.png"},
    {'name': "Steve", 'image': "assets/Profile_photo2.png"},
    {'name': "Ahmed", 'image': "assets/Profile_photo3.png"},
    {'name': "Ali", 'image': "assets/Profile_photo.png"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            color: const Color.fromRGBO(39, 6, 133, 1),
            child: Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(left: 15.0, right: 15, top: 50),
                  child: Row(
                    children: [
                      const CircleAvatar(
                        radius: 24,
                        backgroundImage: AssetImage("assets/Profile_photo.png"),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        "Hello,\nAbdullah!",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                      const Spacer(),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const settingscreen(),
                              ));
                        },
                        child: const ImageIcon(
                          AssetImage("assets/settings.png"),
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 30),
                  padding: const EdgeInsets.only(
                      left: 28, top: 28, right: 28, bottom: 28),
                  height: 178,
                  width: 328,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      gradient: const LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: [
                            Color.fromRGBO(80, 51, 164, 1),
                            Color.fromRGBO(51, 16, 152, 0.65)
                          ])),
                  child: const Column(
                    children: [
                      Text(
                        "Main balance",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(178, 161, 228, 1)),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "\$14,235",
                            style: TextStyle(
                                fontSize: 36,
                                fontWeight: FontWeight.w600,
                                color: Color.fromRGBO(255, 255, 255, 1)),
                          ),
                          Text(
                            ".34",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                color: Color.fromRGBO(255, 255, 255, 1)),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      SizedBox(
                        height: 42,
                        child: Row(
                          children: [
                            Column(
                              children: [
                                ImageIcon(
                                  AssetImage("assets/upload-line.png"),
                                  color: Colors.white,
                                  size: 16,
                                ),
                                SizedBox(
                                  height: 9,
                                ),
                                Text(
                                  "Top up",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromRGBO(255, 255, 255, 1)),
                                ),
                              ],
                            ),
                            Expanded(
                              child: VerticalDivider(
                                color: Color.fromRGBO(111, 69, 233, 1),
                              ),
                            ),
                            Column(
                              children: [
                                ImageIcon(
                                  AssetImage("assets/download-line.png"),
                                  color: Colors.white,
                                  size: 16,
                                ),
                                SizedBox(
                                  height: 9,
                                ),
                                Text(
                                  "Withdraw",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromRGBO(255, 255, 255, 1)),
                                ),
                              ],
                            ),
                            Expanded(
                              child: VerticalDivider(
                                  thickness: 1,
                                  color: Color.fromRGBO(111, 69, 233, 1)),
                            ),
                            Column(
                              children: [
                                ImageIcon(
                                  AssetImage("assets/exchange-funds.png"),
                                  color: Colors.white,
                                  size: 16,
                                ),
                                SizedBox(
                                  height: 9,
                                ),
                                Text(
                                  "Transfer",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromRGBO(255, 255, 255, 1)),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(15.0),
            child: Text(
              "Recent Transfers",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
            ),
          ),
          SizedBox(
            height: 92,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: recent_transfer.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(
                    left: 15,
                  ),
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          if (index == 0) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => transferscreen(),
                                ));
                          }
                        },
                        child: CircleAvatar(
                          backgroundColor:
                              const Color.fromRGBO(230, 221, 255, 1),
                          backgroundImage:
                              AssetImage(recent_transfer[index]['image']),
                          radius: 32,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        recent_transfer[index]['name'],
                        style: const TextStyle(fontSize: 12),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 15, right: 15, top: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Latest Transactions",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                ),
                Text(
                  "View all",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(107, 107, 107, 1)),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.separated(
              itemCount: latest_transaction.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 2),
                        height: 36,
                        width: 32,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Image.asset(latest_transaction[index]['image']),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            latest_transaction[index]['name'],
                            style: const TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            latest_transaction[index]['date'],
                            style: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Color.fromRGBO(120, 131, 141, 1)),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Text(
                        latest_transaction[index]['price'],
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: latest_transaction[index][Color]),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: 12,
                      )
                    ],
                  ),
                );
              },
              separatorBuilder: (context, index) => const Divider(
                color: Color.fromRGBO(237, 239, 246, 1),
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: const mybottomNavigationBar(0),
    );
  }
}
