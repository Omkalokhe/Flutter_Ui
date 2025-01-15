import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class paymentfail extends StatefulWidget {
  const paymentfail({super.key});

  @override
  State<paymentfail> createState() => _paymentfailState();
}

class _paymentfailState extends State<paymentfail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 246, 246, 1),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15, top: 290),
          child: Column(
            children: [
              Image.asset("assets/paymentfail.png"),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Transfer Failed :(",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                '''Your transfer has been declined 
          due to a technical issue''',
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(83, 93, 102, 1)),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 200),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        fixedSize: Size(MediaQuery.of(context).size.width, 45),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4)),
                        backgroundColor: const Color.fromRGBO(87, 50, 191, 1)),
                    onPressed: () {},
                    child: const Text(
                      "Back to wallet",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
