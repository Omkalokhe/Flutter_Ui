import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wallet_app_ui/view/aboutscreen.dart';
import 'package:wallet_app_ui/view/bottomnavigation.dart';
import 'package:wallet_app_ui/view/paybill.dart';

class morescreen extends StatefulWidget {
  const morescreen({super.key});

  @override
  State<morescreen> createState() => _morescreenState();
}

class _morescreenState extends State<morescreen> {
  List<Color> colorlist = [
    Color.fromRGBO(230, 221, 255, 1),
    Color.fromRGBO(228, 239, 255, 1),
    Color.fromRGBO(230, 246, 236, 1),
    Color.fromRGBO(255, 214, 214, 1),
    Color.fromRGBO(242, 225, 242, 1),
  ];
  List data = [
    {
      'name': "Pay bills",
      'image': "assets/lightbulb.png",
      Color: Color.fromRGBO(87, 50, 191, 1)
    },
    {
      'name': "Transfer",
      'image': "assets/exchange-funds.png",
      Color: Color.fromRGBO(29, 98, 202, 1)
    },
    {
      'name': "Topup",
      'image': "assets/upload-line.png",
      Color: Color.fromRGBO(40, 155, 79, 1)
    },
    {
      'name': "Withdraw",
      'image': "assets/download-line.png",
      Color: Color.fromRGBO(184, 50, 50, 1)
    },
    {
      'name': "Analytics",
      'image': "assets/analytics.png",
      Color: Color.fromRGBO(150, 56, 152, 1)
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const Padding(
          padding: EdgeInsets.only(left: 20, top: 50),
          child: Text(
            "More",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
          ),
        ),
        ListView.separated(
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  if (index == 0) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => paybill(),
                        ));
                  }
                },
                child: ListTile(
                  leading: Container(
                    height: 32,
                    width: 32,
                    decoration: BoxDecoration(
                      color: colorlist[index],
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: ImageIcon(
                      AssetImage(data[index]['image']),
                      size: 18,
                      color: data[index][Color],
                    ),
                  ),
                  title: Text(
                    data[index]['name'],
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    size: 16,
                  ),
                ),
              );
            },
            separatorBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: Divider(
                    color: Color.fromRGBO(237, 239, 246, 1),
                  ),
                ),
            itemCount: colorlist.length),
        Padding(
          padding: const EdgeInsets.only(top: 10, bottom: 20),
          child: Divider(
            thickness: 6,
            color: Color.fromRGBO(237, 239, 246, 1),
          ),
        ),
        ListTile(
          leading: Container(
            height: 32,
            width: 32,
            decoration: BoxDecoration(
              color: Color.fromRGBO(255, 236, 186, 1),
              borderRadius: BorderRadius.circular(8),
            ),
            child: ImageIcon(AssetImage("assets/help.png"),
                size: 18, color: Color.fromRGBO(135, 82, 2, 1)),
          ),
          title: Text(
            "Help",
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
          ),
          trailing: Icon(
            Icons.arrow_forward_ios,
            size: 16,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: Divider(color: Color.fromRGBO(237, 239, 246, 1)),
        ),
        ListTile(
          leading: Container(
            height: 32,
            width: 32,
            decoration: BoxDecoration(
              color: Color.fromRGBO(201, 235, 229, 1),
              borderRadius: BorderRadius.circular(8),
            ),
            child: ImageIcon(AssetImage("assets/help.png"),
                size: 18, color: Color.fromRGBO(42, 144, 126, 1)),
          ),
          title: Text(
            "Contact us",
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
          ),
          trailing: Icon(
            Icons.arrow_forward_ios,
            size: 16,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: Divider(color: Color.fromRGBO(237, 239, 246, 1)),
        ),
        ListTile(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => aboutscreen(),
                ));
          },
          leading: Container(
            height: 32,
            width: 32,
            decoration: BoxDecoration(
              color: Color.fromRGBO(230, 221, 255, 1),
              borderRadius: BorderRadius.circular(8),
            ),
            child: ImageIcon(AssetImage("assets/information.png"),
                size: 18, color: Color.fromRGBO(87, 50, 191, 1)),
          ),
          title: Text(
            "About",
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
          ),
          trailing: Icon(
            Icons.arrow_forward_ios,
            size: 16,
          ),
        ),
      ]),
      bottomNavigationBar: mybottomNavigationBar(3),
    );
  }
}
