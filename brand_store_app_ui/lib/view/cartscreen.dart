import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class cartscreen extends StatefulWidget {
  const cartscreen({super.key});

  @override
  State<cartscreen> createState() => _cartscreenState();
}

class _cartscreenState extends State<cartscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back_ios_rounded)),
        ),
        centerTitle: true,
        title: Text("Cart",
            style: GoogleFonts.imprima(
                textStyle: const TextStyle(
              fontSize: 18,
            ))),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("My Orders",
                style: GoogleFonts.imprima(
                    textStyle: const TextStyle(
                        fontSize: 40, fontWeight: FontWeight.bold))),
            ListView.builder(
                shrinkWrap: true,
                itemCount: 2,
                itemBuilder: (context, index) => Slidable(
                      endActionPane: ActionPane(
                        motion: const BehindMotion(),
                        children: [
                          SlidableAction(
                            onPressed: (context) {},
                            backgroundColor:
                                const Color.fromRGBO(255, 122, 0, 1),
                            icon: Icons.favorite_border,
                          ),
                          SlidableAction(
                            onPressed: (context) {},
                            backgroundColor:
                                const Color.fromRGBO(255, 122, 0, 1),
                            icon: Icons.delete,
                          ),
                        ],
                      ),
                      child: Container(
                        height: 144,
                        width: 315,
                        margin: const EdgeInsets.only(
                          top: 30,
                        ),
                        child: Row(
                          children: [
                            Image.asset("assets/shirt1.png"),
                            const SizedBox(
                              width: 20,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Premium \nTagerine Shirt",
                                    style: GoogleFonts.imprima(
                                        textStyle: const TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold))),
                                Text("Yellow \nSize 8",
                                    style: GoogleFonts.imprima(
                                        textStyle: const TextStyle(
                                      fontSize: 14,
                                      color: Color.fromRGBO(121, 119, 128, 1),
                                    ))),
                                Row(
                                  children: [
                                    Text("\$257.85",
                                        style: GoogleFonts.imprima(
                                            textStyle: const TextStyle(
                                                fontSize: 26,
                                                fontWeight: FontWeight.bold))),
                                    const SizedBox(
                                      width: 45,
                                    ),
                                    Text("1x",
                                        style: GoogleFonts.imprima(
                                            textStyle: const TextStyle(
                                          fontSize: 34,
                                        ))),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    )),
            const Divider(),
            Row(
              children: [
                Text("Total Items (3)",
                    style: GoogleFonts.imprima(
                        textStyle: const TextStyle(
                      fontSize: 18,
                      color: Color.fromRGBO(121, 119, 128, 1),
                    ))),
                const SizedBox(
                  width: 126,
                ),
                Text("\$116.00",
                    style: GoogleFonts.imprima(
                        textStyle: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold))),
              ],
            ),
            Row(
              children: [
                Text("Standard Delivery",
                    style: GoogleFonts.imprima(
                        textStyle: const TextStyle(
                      fontSize: 18,
                      color: Color.fromRGBO(121, 119, 128, 1),
                    ))),
                const SizedBox(
                  width: 105,
                ),
                Text("\$12.00",
                    style: GoogleFonts.imprima(
                        textStyle: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold))),
              ],
            ),
            Row(
              children: [
                Text("Total Payment",
                    style: GoogleFonts.imprima(
                        textStyle: const TextStyle(
                      fontSize: 18,
                      color: Color.fromRGBO(121, 119, 128, 1),
                    ))),
                const SizedBox(
                  width: 124,
                ),
                Text("\$126.00",
                    style: GoogleFonts.imprima(
                        textStyle: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold))),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 65),
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, 'Checkout');
                },
                child: Container(
                  alignment: Alignment.center,
                  height: 62,
                  width: 190,
                  decoration: BoxDecoration(
                      color: const Color.fromRGBO(255, 122, 0, 1),
                      borderRadius: BorderRadius.circular(90)),
                  child: Text("Checkout Now",
                      style: GoogleFonts.imprima(
                          textStyle: const TextStyle(
                              fontSize: 18, color: Colors.white))),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
