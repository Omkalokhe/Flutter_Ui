import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:wallet_app_ui/view/transfertoscreen.dart';

class transferscreen extends StatefulWidget {
  const transferscreen({super.key});

  @override
  State<transferscreen> createState() => _transferscreenState();
}

class _transferscreenState extends State<transferscreen> {
  List contact = [
    {
      'name': "Ali Ahmed  ",
      'image': "assets/Profile_photo.png",
      'mobileno': "+1-300-555-0161"
    },
    {
      'name': "Steve Gates",
      'image': "assets/Profile_photo2.png",
      'mobileno': "+1-300-555-0161"
    },
    {
      'name': "Elon Jobs",
      'image': "assets/Profile_photo3.png",
      'mobileno': "+1-300-555-0161"
    },
  ];

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
                "Transfer to",
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
                      "New contact",
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
                      hintText: "Search contact",
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
                  "Frequent contacts",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(83, 93, 102, 1)),
                ),
              ),
              ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => transferTo(index),
                            ));
                      },
                      child: ListTile(
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 0),
                        leading: CircleAvatar(
                          backgroundImage: AssetImage(contact[index]['image']),
                        ),
                        title: Text(
                          contact[index]['name'],
                          style: const TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w600),
                        ),
                        subtitle: Text(
                          "${contact[index]['mobileno']}",
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
                  itemCount: contact.length),
              Text(
                "All contacts",
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(83, 93, 102, 1)),
              ),
              Expanded(
                child: ListView.separated(
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {},
                        child: ListTile(
                          contentPadding:
                              const EdgeInsets.symmetric(horizontal: 0),
                          leading: CircleAvatar(
                            backgroundImage:
                                AssetImage(contact[index]['image']),
                          ),
                          title: Text(
                            contact[index]['name'],
                            style: const TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w600),
                          ),
                          subtitle: Text(
                            "${contact[index]['mobileno']}",
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
                    itemCount: 2),
              ),
            ])));
  }
}
