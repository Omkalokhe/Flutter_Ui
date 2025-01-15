import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'paymentdone.dart';

class paybill extends StatefulWidget {
  const paybill({super.key});

  @override
  State<paybill> createState() => _paybillState();
}

class _paybillState extends State<paybill> {
  List savedbiller = [
    {
      'name': "Electricity",
      'due': "\$132.32",
      'image': "assets/lightbulb.png",
      Color: const Color.fromRGBO(87, 50, 191, 1)
    },
    {
      'name': "Water",
      'due': "\$32.21",
      'image': "assets/water.png",
      Color: const Color.fromRGBO(29, 98, 202, 1)
    },
    {
      'name': "Phone",
      'due': "All paid",
      'image': "assets/phone.png",
      Color: const Color.fromRGBO(40, 155, 79, 1)
    },
  ];
  List<Color> colorlist = [
    const Color.fromRGBO(230, 221, 255, 1),
    const Color.fromRGBO(228, 239, 255, 1),
    const Color.fromRGBO(230, 246, 236, 1),
  ];

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
                      savedbiller[index]['image'],
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
                        savedbiller[index]['name'],
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const Text(
                        "Retailer corporation",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(120, 131, 141, 1)),
                      ),
                    ],
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Padding(
                      padding: EdgeInsets.only(bottom: 30),
                      child: Text(
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
              const SizedBox(
                height: 30,
              ),
              Container(
                alignment: Alignment.center,
                height: 64,
                width: 328,
                decoration: BoxDecoration(
                    color: const Color.fromRGBO(255, 246, 246, 1),
                    borderRadius: BorderRadius.circular(8)),
                child: Text(
                  savedbiller[index]['due'],
                  style: const TextStyle(
                    fontSize: 21,
                    fontWeight: FontWeight.w600,
                    color: Color.fromRGBO(184, 50, 50, 1),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                  padding: const EdgeInsets.only(left: 20),
                  height: 64,
                  width: 328,
                  decoration: BoxDecoration(
                      border:
                          Border.all(color: const Color.fromRGBO(237, 239, 246, 1)),
                      borderRadius: BorderRadius.circular(8)),
                  child: const Column(
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
                        "December 29, 2022 - 12:32 ",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: Color.fromRGBO(83, 93, 102, 1)),
                      ),
                    ],
                  )),
              const SizedBox(
                height: 20,
              ),
              Container(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  height: 64,
                  width: 328,
                  decoration: BoxDecoration(
                      border:
                          Border.all(color: const Color.fromRGBO(237, 239, 246, 1)),
                      borderRadius: BorderRadius.circular(8)),
                  child: const Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Registration no.",
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
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4)),
                      backgroundColor: const Color.fromRGBO(253, 194, 40, 1)),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const paymentdone(),
                        ));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/secure.png",
                        color: const Color.fromRGBO(39, 6, 133, 1),
                      ),
                      const Text(
                        " Secure payment",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Color.fromRGBO(39, 6, 133, 1)),
                      )
                    ],
                  ))
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: const EdgeInsets.only(left: 16, top: 52, right: 16),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(children: [
                const Icon(
                  Icons.arrow_back_ios_new_rounded,
                  size: 20,
                  color: Color.fromRGBO(29, 98, 202, 1),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Text(
                    "Back",
                    style: TextStyle(
                        fontSize: 14,
                        color: Color.fromRGBO(29, 98, 202, 1),
                        fontWeight: FontWeight.w600),
                  ),
                )
              ]),
              const SizedBox(
                height: 40,
              ),
              const Text(
                "Pay to",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 10, bottom: 20),
                    alignment: Alignment.center,
                    height: 48,
                    width: 48,
                    decoration: const BoxDecoration(
                        color: Color.fromRGBO(230, 221, 255, 1),
                        shape: BoxShape.circle),
                    child: const Icon(
                      Icons.add,
                      color: Color.fromRGBO(87, 50, 191, 1),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(bottom: 15),
                    child: Text(
                      "New biller",
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                    ),
                  ),
                ],
              ),
              const Row(children: [
                Expanded(
                    child: Divider(
                  color: Color.fromRGBO(237, 239, 246, 1),
                )),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.0),
                  child: Text(
                    " or ",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(120, 131, 141, 1)),
                  ),
                ),
                Expanded(
                    child: Divider(
                  color: Color.fromRGBO(237, 239, 246, 1),
                )),
              ]),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
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
                      hintText: "Search biller",
                      hintStyle: const TextStyle(
                          fontSize: 14,
                          color: Color.fromRGBO(186, 194, 199, 1)),
                      prefixIcon: const ImageIcon(
                        AssetImage("assets/search.png"),
                        size: 20,
                      )),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 15),
                child: Text(
                  "Saved biller",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(83, 93, 102, 1)),
                ),
              ),
              Expanded(
                child: ListView.separated(
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          mybottomsheet(index);
                        },
                        child: ListTile(
                          contentPadding: const EdgeInsets.symmetric(horizontal: 0),
                          leading: Container(
                            height: 32,
                            width: 32,
                            decoration: BoxDecoration(
                              color: colorlist[index],
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: ImageIcon(
                              AssetImage(savedbiller[index]['image']),
                              size: 18,
                              color: savedbiller[index][Color],
                            ),
                          ),
                          title: Text(
                            savedbiller[index]['name'],
                            style: const TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w600),
                          ),
                          subtitle: Text(
                            "Due:${savedbiller[index]['due']}",
                            style: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Color.fromRGBO(83, 93, 102, 1)),
                          ),
                          trailing: const Icon(
                            Icons.arrow_forward_ios,
                            size: 16,
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (context, index) => const Padding(
                          padding: EdgeInsets.only(left: 15, right: 15),
                          child: Divider(
                            color: Color.fromRGBO(237, 239, 246, 1),
                          ),
                        ),
                    itemCount: colorlist.length),
              ),
            ])));
  }
}
