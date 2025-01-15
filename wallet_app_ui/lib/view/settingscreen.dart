import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class settingscreen extends StatefulWidget {
  const settingscreen({super.key});

  @override
  State<settingscreen> createState() => _settingscreenState();
}

class _settingscreenState extends State<settingscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: const EdgeInsets.only(left: 16, top: 52, right: 16),
            child: Column(children: [
              Row(children: [
                const Icon(
                  Icons.arrow_back_ios_new_rounded,
                  size: 20,
                  color: Color.fromRGBO(29, 98, 202, 1),
                ),
                Row(
                  children: [
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
                    ),
                    SizedBox(
                      width: 60,
                    ),
                    Text(
                      "Profile Setting",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    )
                  ],
                ),
              ]),
              SizedBox(
                height: 40,
              ),
              Container(
                margin: EdgeInsets.only(bottom: 10),
                alignment: Alignment.center,
                height: 102,
                width: 102,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                        color: Color.fromRGBO(79, 188, 168, 1), width: 2)),
                child: Stack(
                  children: [
                    CircleAvatar(
                      radius: 47,
                      backgroundImage: AssetImage("assets/settingprofile.png"),
                    ),
                    Positioned(
                        right: 1,
                        bottom: 2,
                        child: Image.asset("assets/shield.png"))
                  ],
                ),
              ),
              Text(
                "Abdullah Ghatasheh",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
              ),
              Text(
                "Joined 2 years ago",
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(120, 131, 141, 1)),
              ),
              SizedBox(
                height: 30,
              ),
              ListTile(
                leading: Container(
                  height: 36,
                  width: 36,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(230, 221, 255, 1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: ImageIcon(AssetImage("assets/user.png"),
                      size: 18, color: Color.fromRGBO(87, 50, 191, 1)),
                ),
                title: Text(
                  "Full name",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(120, 131, 141, 1)),
                ),
                subtitle: Text(
                  "Abdullah Ghatasheh",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
                ),
                trailing: Text(
                  "Edit",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(29, 98, 202, 1)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Divider(color: Color.fromRGBO(237, 239, 246, 1)),
              ),
              ListTile(
                leading: Container(
                  height: 36,
                  width: 36,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(201, 235, 229, 1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: ImageIcon(AssetImage("assets/mobile.png"),
                      size: 18, color: Color.fromRGBO(42, 144, 126, 1)),
                ),
                title: Text(
                  "Mobile",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(120, 131, 141, 1)),
                ),
                subtitle: Text(
                  "+962 79 890 50 14",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
                ),
                trailing: Text(
                  "Edit",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(29, 98, 202, 1)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Divider(color: Color.fromRGBO(237, 239, 246, 1)),
              ),
              ListTile(
                leading: Container(
                  height: 36,
                  width: 36,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(230, 246, 236, 1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: ImageIcon(AssetImage("assets/email.png"),
                      size: 18, color: Color.fromRGBO(40, 155, 79, 1)),
                ),
                title: Text(
                  "Email",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(120, 131, 141, 1)),
                ),
                subtitle: Text(
                  "abdgfx@gmail.com",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
                ),
                trailing: Text(
                  "Edit",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(29, 98, 202, 1)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Divider(color: Color.fromRGBO(237, 239, 246, 1)),
              ),
              ListTile(
                leading: Container(
                  height: 36,
                  width: 36,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 214, 214, 1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: ImageIcon(AssetImage("assets/lock.png"),
                      size: 18, color: Color.fromRGBO(184, 50, 50, 1)),
                ),
                title: Text(
                  "Change password",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  size: 16,
                ),
              ),
            ])));
  }
}
