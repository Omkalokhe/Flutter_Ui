import 'package:flutter/material.dart';

class mybottomNavigationBar extends StatefulWidget {
  final int currentIndex;
  const mybottomNavigationBar(
    this.currentIndex, {
    super.key,
  });

  @override
  State<mybottomNavigationBar> createState() => _bottomNavigationBarState();
}

class _bottomNavigationBarState extends State<mybottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(32),
        child: BottomNavigationBar(
            unselectedFontSize: 14,
            selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
            selectedItemColor: Color.fromRGBO(187, 242, 70, 1),
            unselectedItemColor: Color.fromRGBO(157, 178, 206, 1),
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/Home.png")),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/explore.png")),
                label: "Explore",
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                ),
                label: "Profile",
              )
            ],
            currentIndex: widget.currentIndex,
            backgroundColor: const Color.fromRGBO(19, 19, 19, 1),
            onTap: (index) {
              switch (index) {
                case 0:
                  Navigator.pushNamedAndRemoveUntil(
                      context, 'Home', (route) => false);
                  break;
                case 1:
                  Navigator.pushNamed(
                    context,
                    'Explore',
                  );
                  break;
                case 2:
                  Navigator.pushNamedAndRemoveUntil(
                      context, 'Home', (route) => false);
                  break;
                case 3:
                  break;
              }
            }),
      ),
    );
  }
}
