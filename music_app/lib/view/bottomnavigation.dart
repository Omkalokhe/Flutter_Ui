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
        selectedItemColor: Color.fromRGBO(230, 154, 21, 1),
        unselectedItemColor: Color.fromRGBO(157, 178, 206, 1),
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite_border,
            ),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search_outlined,
            ),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_bag_outlined,
            ),
            label: "Cart",
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
            // case 0:
            //   Navigator.pushNamedAndRemoveUntil(
            //       context, 'Player', (route) => false);
            //   break;
            case 1:
// search screen route here
              break;
            case 2:
              Navigator.pushNamedAndRemoveUntil(
                  context, 'Home', (route) => false);
              break;
              case 3:
// Cart screen route here
              break;
            case 4:
              Navigator.pushNamedAndRemoveUntil(
                  context, 'Gallery', (route) => false);
              break;
          }
        });
  }
}
