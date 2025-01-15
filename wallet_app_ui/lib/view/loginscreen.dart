import 'package:country_code_text_field/country_code_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:wallet_app_ui/view/passwordscreen.dart';

class loginscreen extends StatefulWidget {
  const loginscreen({super.key});

  @override
  State<loginscreen> createState() => _loginscreenState();
}

class _loginscreenState extends State<loginscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(247, 244, 255, 1),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: SizedBox(
                width: 88.14,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          height: 4,
                          width: 4,
                          margin: const EdgeInsets.symmetric(horizontal: 4),
                          decoration: const BoxDecoration(
                              color: Color.fromRGBO(253, 194, 40, 1),
                              shape: BoxShape.circle),
                        ),
                        Container(
                          height: 8,
                          width: 8,
                          decoration: const BoxDecoration(
                              color: Color.fromRGBO(253, 194, 40, 1),
                              shape: BoxShape.circle),
                        )
                      ],
                    ),
                    const Text(
                      "Tap’nPay",
                      style: TextStyle(
                          fontSize: 20,
                          color: Color.fromRGBO(87, 50, 191, 1),
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Image.asset("assets/loginscreen.png"),
            ),
            const SizedBox(
              height: 72,
            ),
            Container(
              padding: const EdgeInsets.all(15),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2,
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(bottom: 25.0),
                    child: Text(
                      "Enter your\nmobile number",
                      style:
                          TextStyle(fontSize: 21, fontWeight: FontWeight.w600),
                    ),
                  ),
                  const Text(
                    "Mobile number",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  SizedBox(
                    // height: 45,
                    child: CountryCodeTextField(
                      textAlignVertical: TextAlignVertical.center,
                      onChanged: (value) {},
                      decoration: InputDecoration(
                          isDense: true,
                          isCollapsed: true,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(4),
                              borderSide: const BorderSide(
                                  color: Color.fromRGBO(225, 227, 237, 1))),
                          hintText: "7X-XXXXXXX",
                          hintStyle: const TextStyle(
                              fontSize: 14,
                              color: Color.fromRGBO(186, 194, 199, 1)),
                          enabled: true,
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(4),
                              borderSide: const BorderSide(
                                  color: Color.fromRGBO(225, 227, 237, 1))),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(4),
                              borderSide: const BorderSide(
                                  color: Color.fromRGBO(225, 227, 237, 1)))),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4)),
                        fixedSize: const Size(328, 45),
                        backgroundColor: const Color.fromRGBO(87, 50, 191, 1)),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => passwordscreen(),
                          ));
                    },
                    child: const Text(
                      "Continue",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Row(children: [
                    Expanded(
                        child: Divider(
                      color: Color.fromRGBO(237, 239, 246, 1),
                    )),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15.0),
                      child: Text(
                        "or continue using",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(120, 131, 141, 1)),
                      ),
                    ),
                    Expanded(
                        child: Divider(
                      color: Color.fromRGBO(237, 239, 246, 1),
                    )),
                  ]),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        height: 45,
                        width: 98.67,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            border: Border.all(
                                color: Color.fromRGBO(237, 239, 246, 1))),
                        child: Image.asset("assets/Facebooklogo.png"),
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 45,
                        width: 98.67,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            border: Border.all(
                                color: Color.fromRGBO(237, 239, 246, 1))),
                        child: Image.asset("assets/Google.png"),
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 45,
                        width: 98.67,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            border: Border.all(
                                color: Color.fromRGBO(237, 239, 246, 1))),
                        child: Image.asset("assets/apple.png"),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
