import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class checkoutscreen extends StatefulWidget {
  const checkoutscreen({super.key});

  @override
  State<checkoutscreen> createState() => _checkoutscreenState();
}

class _checkoutscreenState extends State<checkoutscreen> {
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
        title: Text("Checkout",
            style: GoogleFonts.imprima(
                textStyle: const TextStyle(
              fontSize: 18,
            ))),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Delivery Address",
                style: GoogleFonts.imprima(
                    textStyle: const TextStyle(
                        fontSize: 18,
                        color: Color.fromRGBO(121, 119, 128, 1)))),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset("assets/map.png"),
                Text("25/3 Housing Estate, \nSylhet",
                    style: GoogleFonts.imprima(
                        textStyle: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold))),
                Text("Change",
                    style: GoogleFonts.imprima(
                        textStyle: const TextStyle(
                            fontSize: 14,
                            color: Color.fromRGBO(121, 119, 128, 1)))),
              ],
            ),
            Row(
              children: [
                Icon(
                  Icons.watch_later_outlined,
                  color: Color.fromRGBO(123, 123, 141, 1),
                ),
                SizedBox(
                  width: 10,
                ),
                Text("Delivered in next 7 days",
                    style: GoogleFonts.imprima(
                        textStyle: const TextStyle(
                      fontSize: 16,
                    ))),
              ],
            ),
            Text("Payment Method",
                style: GoogleFonts.imprima(
                    textStyle: const TextStyle(
                        fontSize: 16,
                        color: Color.fromRGBO(121, 119, 128, 1)))),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset("assets/visa.png"),
                Image.asset("assets/payment2.png"),
                Image.asset("assets/payment3.png"),
                Image.asset("assets/payment4.png"),
                Image.asset("assets/payment5.png"),
              ],
            ),
            Container(
              alignment: Alignment.center,
              height: 54,
              width: 315,
              color: Color.fromRGBO(252, 252, 252, 1),
              child: Text("Add Voucher",
                  style: GoogleFonts.imprima(
                      textStyle: const TextStyle(
                          fontSize: 16,
                          color: Color.fromRGBO(121, 119, 128, 1)))),
            ),
            SizedBox(
              height: 82,
              width: 315,
              child: Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Note : ",
                        style: GoogleFonts.imprima(
                            textStyle: const TextStyle(
                                fontSize: 15,
                                color: Color.fromRGBO(255, 0, 0, 1)))),
                    Expanded(
                      child: Text(
                          " Use your order id at the payment. Your Id #154619 if you forget to put your order id we can’t confirm the payment.",
                          style: GoogleFonts.imprima(
                              textStyle: const TextStyle(
                                  fontSize: 15,
                                  color: Color.fromRGBO(121, 119, 128, 1)))),
                    ),
                  ],
                ),
              ),
            ),
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
                  child: Text("Pay Now",
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
