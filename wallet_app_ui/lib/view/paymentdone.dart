import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class paymentdone extends StatefulWidget {
  const paymentdone({super.key});

  @override
  State<paymentdone> createState() => _paymentdoneState();
}

class _paymentdoneState extends State<paymentdone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(left: 15, right: 15, top: 100),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 80),
            child: Image.asset("assets/paymentdone.png"),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 110, top: 20),
            child: Text(
              "Payment done!",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 90, top: 20),
            child: Text(
              '''Bill payment has been done 
             successfully''',
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Color.fromRGBO(83, 93, 102, 1)),
            ),
          ),
          SizedBox(
            height: 60,
          ),
          Text(
            "Payment details",
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
              padding: EdgeInsets.only(left: 20),
              height: 64,
              width: 328,
              decoration: BoxDecoration(
                  border: Border.all(color: Color.fromRGBO(237, 239, 246, 1)),
                  borderRadius: BorderRadius.circular(8)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Biller",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(120, 131, 141, 1)),
                  ),
                  Text(
                    "Electricity company inc.",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: Color.fromRGBO(83, 93, 102, 1)),
                  ),
                ],
              )),
          SizedBox(
            height: 20,
          ),
          Container(
              padding: EdgeInsets.only(left: 20),
              height: 64,
              width: 328,
              decoration: BoxDecoration(
                  border: Border.all(color: Color.fromRGBO(237, 239, 246, 1)),
                  borderRadius: BorderRadius.circular(8)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Amount",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(120, 131, 141, 1)),
                  ),
                  Text(
                    "\$132.32",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: Color.fromRGBO(83, 93, 102, 1)),
                  ),
                ],
              )),
          SizedBox(
            height: 20,
          ),
          Container(
              padding: EdgeInsets.only(left: 20, right: 20),
              height: 64,
              width: 328,
              decoration: BoxDecoration(
                  border: Border.all(color: Color.fromRGBO(237, 239, 246, 1)),
                  borderRadius: BorderRadius.circular(8)),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Transaction no.",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(120, 131, 141, 1)),
                      ),
                      Text(
                        "23010412432431",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: Color.fromRGBO(83, 93, 102, 1)),
                      ),
                    ],
                  ),
                  Spacer(),
                  ImageIcon(
                    AssetImage("assets/copied.png"),
                    size: 20,
                    color: Color.fromRGBO(83, 93, 102, 1),
                  )
                ],
              )),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 100),
            child: Row(
              children: [
                ImageIcon(
                  AssetImage("assets/flag.png"),
                  color: Color.fromRGBO(184, 50, 50, 1),
                  size: 20,
                ),
                Text(
                  "    Report a problem",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(184, 50, 50, 1)),
                )
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  fixedSize: Size(MediaQuery.of(context).size.width, 45),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4)),
                  backgroundColor: Color.fromRGBO(87, 50, 191, 1)),
              onPressed: () {},
              child: Text(
                "Back to wallet",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ))
        ],
      ),
    ));
  }
}
