import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class homescreen extends StatefulWidget {
  const homescreen({super.key});

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  List shirt = [
    "assets/shirt1.png",
    "assets/shirt2.png",
    "assets/shirt4.png",
    "assets/shirt3.png",
  ];

  List categories = ["All", "Mens", "Women", "Kids", "Other"];
  String? selectedCategory;
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.only(left: 30.0),
          child: Icon(Icons.menu),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 30.0),
            child: Icon(Icons.person),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Explore",
                style: GoogleFonts.imprima(
                    textStyle: const TextStyle(
                  fontSize: 36,
                ))),
            Text("Best trendy collection!",
                style: GoogleFonts.imprima(
                    textStyle: const TextStyle(
                        fontSize: 18,
                        color: Color.fromRGBO(121, 119, 128, 1)))),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 36,
              width: double.infinity,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  bool isSelected = selectedCategory == categories[index];
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedCategory = categories[index];
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.only(right: 8),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color:
                              isSelected ? Colors.orange : Colors.transparent,
                          borderRadius: BorderRadius.circular(30),
                          border: isSelected
                              ? null
                              : Border.all(color: Colors.white)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Text(categories[index],
                            style: GoogleFonts.imprima(
                                textStyle: TextStyle(
                                    fontSize: 16,
                                    color: isSelected
                                        ? Colors.white
                                        : Colors.black))),
                      ),
                    ),
                  );
                },
              ),
            ),
            Expanded(
                child: MasonryGridView.builder(
              itemCount: shirt.length,
              gridDelegate:
                  const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 20.0, top: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(clipBehavior: Clip.none, children: [
                        GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, 'Details');
                            },
                            child: Image.asset(shirt[index])),
                        Positioned(
                          bottom: -18,
                          right: 15,
                          child: Container(
                            alignment: Alignment.center,
                            height: 36,
                            width: 36,
                            decoration: BoxDecoration(
                                color: Colors.black,
                                shape: BoxShape.circle,
                                border:
                                    Border.all(color: Colors.white, width: 5)),
                            child: const Icon(
                              Icons.shopping_bag_outlined,
                              color: Colors.white,
                              size: 15,
                            ),
                          ),
                        )
                      ]),
                      Text("\$240.32",
                          style: GoogleFonts.imprima(
                              textStyle: const TextStyle(
                            fontSize: 18,
                          ))),
                      Text("Tagerine Shirt",
                          style: GoogleFonts.imprima(
                              textStyle: const TextStyle(
                            fontSize: 16,
                          )))
                    ],
                  ),
                );
              },
            ))
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Colors.black,
          selectedItemColor: Color.fromRGBO(255, 122, 0, 1),
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
              ),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag_outlined),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Setting',
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          backgroundColor: Colors.white),
    );
  }
}
