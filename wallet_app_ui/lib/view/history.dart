import 'package:flutter/material.dart';
import 'package:wallet_app_ui/view/bottomnavigation.dart';

class history extends StatefulWidget {
  const history({super.key});

  @override
  State<history> createState() => _historyState();
}

class _historyState extends State<history> {
  void mybottomsheet(index) {
    showModalBottomSheet(
      backgroundColor: Colors.white,
      context: context,
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  Container(
                    height: 56,
                    width: 56,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(8)),
                    child: Image.asset(
                      latest_transaction[index]['image'],
                      fit: BoxFit.cover,
                    ),
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
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        "Retailer corporation",
                        style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(120, 131, 141, 1)),
                      ),
                    ],
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 30),
                      child: const Text(
                        "Done",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Color.fromRGBO(29, 98, 202, 1)),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                alignment: Alignment.center,
                height: 64,
                width: 328,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 246, 246, 1),
                    borderRadius: BorderRadius.circular(8)),
                child: Text(
                  latest_transaction[index]['price'],
                  style: TextStyle(
                      fontSize: 21,
                      fontWeight: FontWeight.w600,
                      color: latest_transaction[index][Color]),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                  padding: EdgeInsets.only(left: 20),
                  height: 64,
                  width: 328,
                  decoration: BoxDecoration(
                      border:
                          Border.all(color: Color.fromRGBO(237, 239, 246, 1)),
                      borderRadius: BorderRadius.circular(8)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Today",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(120, 131, 141, 1)),
                      ),
                      Text(
                        latest_transaction[index]['date'],
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: Color.fromRGBO(83, 93, 102, 1)),
                      ),
                    ],
                  )),
              SizedBox(
                height: 20,
              ),
              Container(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  height: 64,
                  width: 328,
                  decoration: BoxDecoration(
                      border:
                          Border.all(color: Color.fromRGBO(237, 239, 246, 1)),
                      borderRadius: BorderRadius.circular(8)),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Transaction no.",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Color.fromRGBO(120, 131, 141, 1)),
                          ),
                          Text(
                            "23010412432431",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: Color.fromRGBO(83, 93, 102, 1)),
                          ),
                        ],
                      ),
                      Spacer(),
                      ImageIcon(
                        AssetImage("assets/copied.png"),
                        size: 20,
                        color: Color.fromRGBO(83, 93, 102, 1),
                      )
                    ],
                  )),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 100),
                child: Row(
                  children: [
                    ImageIcon(
                      AssetImage("assets/flag.png"),
                      color: Color.fromRGBO(184, 50, 50, 1),
                      size: 20,
                    ),
                    Text(
                      "    Report a problem",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Color.fromRGBO(184, 50, 50, 1)),
                    )
                  ],
                ),
              )
            ],
          ),
        );
      },
    );
  }

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 20, top: 50),
            child: Text(
              "History",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
            child: Row(
              children: [
                SizedBox(
                  width: 233,
                  height: 37,
                  child: TextField(
                    textAlignVertical: TextAlignVertical.center,
                    decoration: InputDecoration(
                        alignLabelWithHint: true,
                        isCollapsed: true,
                        enabled: true,
                        enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Color.fromRGBO(225, 227, 237, 1)),
                            borderRadius: BorderRadius.circular(4)),
                        border: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Color.fromRGBO(225, 227, 237, 1)),
                            borderRadius: BorderRadius.circular(4)),
                        hintText: "Value goes here",
                        hintStyle: const TextStyle(
                            fontSize: 14,
                            color: Color.fromRGBO(186, 194, 199, 1)),
                        prefixIcon: const ImageIcon(
                          AssetImage("assets/search.png"),
                          size: 20,
                        )),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 15),
                  padding: const EdgeInsets.all(6),
                  height: 37,
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: const Color.fromRGBO(186, 194, 199, 1)),
                      borderRadius: BorderRadius.circular(4)),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ImageIcon(
                        AssetImage("assets/equalizer.png"),
                        size: 20,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Filter",
                        style: TextStyle(fontSize: 14),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 15, right: 15, top: 30),
            child: Text(
              "Today",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color.fromRGBO(83, 93, 102, 1)),
            ),
          ),
          ListView.separated(
            shrinkWrap: true,
            itemCount: latest_transaction.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: GestureDetector(
                  onTap: () {
                    mybottomsheet(index);
                  },
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
                ),
              );
            },
            separatorBuilder: (context, index) => const Divider(
              color: Color.fromRGBO(237, 239, 246, 1),
            ),
          ),
          Divider(
            thickness: 6,
            color: Color.fromRGBO(237, 239, 246, 1),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 15, right: 15, top: 30),
            child: Text(
              "Yestarday",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color.fromRGBO(83, 93, 102, 1)),
            ),
          ),
          ListView.separated(
            shrinkWrap: true,
            itemCount: latest_transaction.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: GestureDetector(
                  onTap: () {
                    mybottomsheet(index);
                  },
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
                ),
              );
            },
            separatorBuilder: (context, index) => const Divider(
              color: Color.fromRGBO(237, 239, 246, 1),
            ),
          ),
          Divider(
            thickness: 6,
            color: Color.fromRGBO(237, 239, 246, 1),
          )
        ],
      ),
      bottomNavigationBar: const mybottomNavigationBar(1),
    );
  }
}
