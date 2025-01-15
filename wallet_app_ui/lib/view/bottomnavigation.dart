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
    return BottomNavigationBar(
        unselectedFontSize: 14,
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
        selectedItemColor: Color.fromRGBO(111, 69, 233, 1),
        unselectedItemColor: Color.fromRGBO(83, 93, 102, 1),
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            activeIcon: ImageIcon(AssetImage("assets/homefill.png")),
            icon: ImageIcon(AssetImage("assets/home.png")),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("assets/history.png")),
            activeIcon: ImageIcon(AssetImage("assets/historyfill.png")),
            label: 'History',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("assets/card.png")),
            activeIcon: ImageIcon(AssetImage("assets/cardfill.png")),
            label: 'Cards ',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("assets/more.png")),
            activeIcon: ImageIcon(AssetImage("assets/morefill.png")),
            label: 'More',
          ),
        ],
        currentIndex: widget.currentIndex,
        backgroundColor: Colors.white,
        onTap: (index) {
          switch (index) {
            case 0:
              Navigator.pushNamedAndRemoveUntil(
                  context, 'Home', (route) => false);
              break;
            case 1:
              Navigator.pushNamed(
                context,
                'History',
              );
              break;
            case 2:
              Navigator.pushNamed(
                context,
                'Cards',
              );
            case 3:
              Navigator.pushNamed(
                context,
                'More',
              );
              break;
          }
        });
  }
}
