import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class cardpayment extends StatefulWidget {
  const cardpayment({super.key});

  @override
  State<cardpayment> createState() => _cardpaymentState();
}

class _cardpaymentState extends State<cardpayment> {
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
          )
        ]),
        SizedBox(
          height: 40,
        ),
        Container(
          height: 196,
          width: 328,
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            color: Color.fromRGBO(39, 6, 133, 1),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Stack(children: [
            Positioned(
              bottom: -100,
              right: 0,
              child: Container(
                height: 192,
                width: 192,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(111, 69, 233, 1),
                  shape: BoxShape.circle,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16, left: 12, right: 12),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Abdullah Ghatasheh",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                  Spacer(),
                  Text(
                    "**** 3245",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                ],
              ),
            ),
            Positioned(
              top: -90,
              left: -50,
              child: Container(
                height: 192,
                width: 192,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Color.fromRGBO(111, 69, 233, 1))),
              ),
            ),
            Positioned(
              bottom: -60,
              right: -70,
              child: Container(
                height: 192,
                width: 192,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Color.fromRGBO(253, 194, 40, 1))),
              ),
            ),
            Positioned(
                bottom: 20,
                right: 20,
                child: ImageIcon(
                  AssetImage("assets/wifi.png"),
                  color: Colors.white,
                )),
            Positioned(
              bottom: 60,
              left: 20,
              child: Text(
                "Balance",
                style: TextStyle(
                    fontSize: 12, color: Color.fromRGBO(230, 221, 255, 1)),
              ),
            ),
            Positioned(
              bottom: 30,
              left: 20,
              child: Text(
                "\$2,354",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 21,
                    color: Color.fromRGBO(255, 255, 255, 1)),
              ),
            ),
          ]),
        ),
        SizedBox(
          height: 200,
        ),
        Image.asset(
          "assets/wifi.png",
          color: Color.fromRGBO(120, 131, 141, 1),
          height: 18,
          width: 18,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "Move near a device to pay",
          style: TextStyle(
            fontSize: 16,
            color: Color.fromRGBO(120, 131, 141, 1),
          ),
        ),
        SizedBox(
          height: 150,
        ),
        ElevatedButton(
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4)),
                backgroundColor: Color.fromRGBO(87, 50, 191, 1)),
            onPressed: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/qrcode.png"),
                Text(
                  " QR Pay",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                )
              ],
            ))
      ]),
    ));
  }
}
