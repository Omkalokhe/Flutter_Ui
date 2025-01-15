import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:wallet_app_ui/view/otp1.dart';

class createaccount extends StatefulWidget {
  const createaccount({super.key});

  @override
  State<createaccount> createState() => _createaccountState();
}

class _createaccountState extends State<createaccount> {
  bool _passwordVisible = true;
  bool _checkbox = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
          padding: const EdgeInsets.only(top: 35),
          child: Row(
            children: [
              Icon(
                Icons.arrow_back_ios_new_rounded,
                size: 20,
                color: Color.fromRGBO(29, 98, 202, 1),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Text(
                  "Back",
                  style: TextStyle(
                      fontSize: 14,
                      color: Color.fromRGBO(29, 98, 202, 1),
                      fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(
                width: 60,
              ),
              SizedBox(
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
            ],
          ),
        ),
        SizedBox(
          height: 120,
        ),
        Text(
          "Create Account",
          style: TextStyle(fontSize: 21, fontWeight: FontWeight.w600),
        ),
        SizedBox(
          height: 30,
        ),
        const Text(
          "Mobile number",
          style: TextStyle(fontSize: 12),
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          height: 45,
          child: TextField(
            textAlignVertical: TextAlignVertical.center,
            decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4),
                    borderSide: const BorderSide(
                        color: Color.fromRGBO(225, 227, 237, 1))),
                hintText: "e.g. John Doe",
                hintStyle: const TextStyle(
                    fontSize: 14, color: Color.fromRGBO(186, 194, 199, 1)),
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
          height: 20,
        ),
        const Text(
          "Email",
          style: TextStyle(fontSize: 12),
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          height: 45,
          child: TextField(
            textAlignVertical: TextAlignVertical.center,
            decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4),
                    borderSide: const BorderSide(
                        color: Color.fromRGBO(225, 227, 237, 1))),
                hintText: "e.g. email@example.com",
                hintStyle: const TextStyle(
                    fontSize: 14, color: Color.fromRGBO(186, 194, 199, 1)),
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
          height: 20,
        ),
        const Text(
          "Password",
          style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
        ),
        const SizedBox(
          height: 5,
        ),
        SizedBox(
          height: 45,
          child: TextField(
            obscureText: _passwordVisible,
            obscuringCharacter: "*",
            textAlignVertical: TextAlignVertical.center,
            onChanged: (value) {},
            decoration: InputDecoration(
                suffixIcon: IconButton(
                  icon: Icon(
                    _passwordVisible
                        ? Icons.visibility_off_outlined
                        : Icons.visibility,
                  ),
                  onPressed: () {
                    setState(() {
                      _passwordVisible = !_passwordVisible;
                    });
                  },
                ),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4),
                    borderSide: const BorderSide(
                        color: Color.fromRGBO(225, 227, 237, 1))),
                hintText: "Enter your password",
                hintStyle: const TextStyle(
                    fontSize: 14, color: Color.fromRGBO(186, 194, 199, 1)),
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
          height: 20,
        ),
        Row(
          children: [
            Checkbox(
              value: _checkbox,
              onChanged: (bool? value) {
                setState(() {
                  _checkbox = value!;
                });
              },
            ),
            const Text(
              "I accept",
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
            ),
            const Text(
              " terms and conditions",
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Color.fromRGBO(29, 98, 202, 1)),
            ),
            const Text(
              " and",
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
            ),
            const Text(
              " privacy policy ",
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Color.fromRGBO(29, 98, 202, 1)),
            ),
          ],
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
                context, MaterialPageRoute(builder: (context) => otpscreen()));
          },
          child: const Text(
            "Continue",
            style: TextStyle(
                fontSize: 14, fontWeight: FontWeight.w600, color: Colors.white),
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
                  border: Border.all(color: Color.fromRGBO(237, 239, 246, 1))),
              child: Image.asset("assets/Facebooklogo.png"),
            ),
            Container(
              alignment: Alignment.center,
              height: 45,
              width: 98.67,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  border: Border.all(color: Color.fromRGBO(237, 239, 246, 1))),
              child: Image.asset("assets/Google.png"),
            ),
            Container(
              alignment: Alignment.center,
              height: 45,
              width: 98.67,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  border: Border.all(color: Color.fromRGBO(237, 239, 246, 1))),
              child: Image.asset("assets/apple.png"),
            )
          ],
        )
      ]),
    )));
  }
}
