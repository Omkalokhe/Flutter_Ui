import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:pet_care_ui/view/homescreen.dart';
import 'package:pet_care_ui/view/servicescreen.dart';
import 'package:pet_care_ui/view/shopscreen.dart';

class mybottomnavigation extends StatefulWidget {
  const mybottomnavigation({super.key});

  @override
  State<mybottomnavigation> createState() => _mybottomnavigationState();
}

class _mybottomnavigationState extends State<mybottomnavigation> {
  int _selectedIndex = 0;
  final controller = PersistentTabController(initialIndex: 0);

  List<Widget> screen = [
    const homescreen(),
    const servicescreen(),
    const shopscreen(),
    const Text("data"),
    const Text("data"),
  ];

  List<PersistentBottomNavBarItem> navBarItem = [
    PersistentBottomNavBarItem(
        icon: const Icon(Icons.home_filled),
        inactiveColorPrimary: const Color.fromRGBO(126, 128, 143, 1),
        title: "Home",
        activeColorPrimary: const Color.fromRGBO(245, 146, 69, 1)),
    PersistentBottomNavBarItem(
        icon: const Icon(Icons.favorite_border),
        inactiveColorPrimary: const Color.fromRGBO(126, 128, 143, 1),
        title: "Service",
        activeColorPrimary: const Color.fromRGBO(245, 146, 69, 1)),
    PersistentBottomNavBarItem(
        icon: const Icon(
          Icons.shopping_cart_outlined,
          color: Colors.white,
        ),
        inactiveColorPrimary: const Color.fromRGBO(126, 128, 143, 1),
        title: "Cart",
        activeColorPrimary: const Color.fromRGBO(245, 146, 69, 1)),
    PersistentBottomNavBarItem(
        icon: const Icon(Icons.history_toggle_off),
        inactiveColorPrimary: const Color.fromRGBO(126, 128, 143, 1),
        title: "History",
        activeColorPrimary: const Color.fromRGBO(245, 146, 69, 1)),
    PersistentBottomNavBarItem(
        icon: const Icon(Icons.person_2_outlined),
        inactiveColorPrimary: const Color.fromRGBO(126, 128, 143, 1),
        title: "Profile",
        activeColorPrimary: const Color.fromRGBO(245, 146, 69, 1))
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: screen[_selectedIndex],
        bottomNavigationBar: PersistentTabView(
          context,
          screens: screen,
          items: navBarItem,
          decoration: NavBarDecoration(borderRadius: BorderRadius.circular(1)),
          controller: controller,
          backgroundColor: Colors.white,
          navBarStyle: NavBarStyle.style15,
        ));
  }
}
