import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class detailscreen extends StatefulWidget {
  const detailscreen({super.key});

  @override
  State<detailscreen> createState() => _detailscreenState();
}

class _detailscreenState extends State<detailscreen> {
  List size = ["S", "M", "L", "XL", "XXL"];
  String? selectedSize;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Padding(
            padding: EdgeInsets.only(left: 15.0),
            child: Icon(Icons.arrow_back_ios_new),
          ),
        ),
        centerTitle: true,
        title: Text("Details",
            style: GoogleFonts.imprima(
                textStyle: const TextStyle(
              fontSize: 18,
            ))),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 25),
            child: Icon(Icons.save_outlined),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 24, right: 24, top: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              "assets/detail.png",
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  width: 209,
                  child: Text("Premium Tagerine Shirt",
                      style: GoogleFonts.imprima(
                          textStyle: const TextStyle(
                        fontSize: 30,
                      ))),
                ),
                // Spacer(),
                const CircleAvatar(
                  radius: 12,
                  backgroundImage: AssetImage("assets/detail1.png"),
                ),
                const CircleAvatar(
                  radius: 12,
                  backgroundImage: AssetImage("assets/detail2.png"),
                ),
                const CircleAvatar(
                  radius: 12,
                  backgroundImage: AssetImage("assets/detail3.png"),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0, bottom: 10),
              child: Text("Size",
                  style: GoogleFonts.imprima(
                      textStyle: const TextStyle(
                    fontSize: 24,
                  ))),
            ),
            SizedBox(
              height: 44,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: size.length,
                itemBuilder: (context, index) {
                  bool isSelected = selectedSize == size[index];
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedSize = size[index];
                      });
                    },
                    child: Container(
                      margin: const EdgeInsets.only(right: 14),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: isSelected ? Colors.black : null,
                          borderRadius: BorderRadius.circular(12),
                          border: isSelected
                              ? null
                              : Border.all(color: Colors.white)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 14),
                        child: Text(size[index],
                            style: GoogleFonts.imprima(
                                textStyle: TextStyle(
                                    fontSize: 24,
                                    color: isSelected
                                        ? Colors.white
                                        : Colors.black))),
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(
              height: 22,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("\$257.85",
                    style: GoogleFonts.imprima(
                        textStyle: const TextStyle(
                            fontSize: 36, fontWeight: FontWeight.bold))),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, 'Cart');
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 62,
                    width: 162,
                    decoration: BoxDecoration(
                        color: const Color.fromRGBO(255, 122, 0, 1),
                        borderRadius: BorderRadius.circular(90)),
                    child: Text("Add To Cart",
                        style: GoogleFonts.imprima(
                            textStyle: const TextStyle(
                                fontSize: 18, color: Colors.white))),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
