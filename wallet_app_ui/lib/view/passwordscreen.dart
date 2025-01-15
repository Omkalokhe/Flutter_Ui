import 'package:country_code_text_field/country_code_text_field.dart';
import 'package:flutter/material.dart';
import 'package:wallet_app_ui/view/createaccount.dart';
import 'package:wallet_app_ui/view/homescreen.dart';

class passwordscreen extends StatefulWidget {
  const passwordscreen({super.key});

  @override
  State<passwordscreen> createState() => _passwordscreenState();
}

class _passwordscreenState extends State<passwordscreen> {
  bool _usemobile = false;
  bool _passwordVisible = false;
  void emailBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      isDismissible: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        ),
      ),
      builder: (context) {
        return Padding(
          padding: EdgeInsets.only(
              left: 20.0,
              right: 20,
              top: 20,
              bottom: MediaQuery.of(context).viewInsets.bottom),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  const Text(
                    "Forgot your password?",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    width: 110,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Text(
                      "Done",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Color.fromRGBO(29, 98, 202, 1)),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
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
                height: 40,
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
                        builder: (context) => createaccount(),
                      ));
                },
                child: const Text(
                  "Send reset link",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 100),
                child: GestureDetector(
                  onTap: () {
                    _usemobile = true;
                    setState(() {
                      if (_usemobile == true) {
                        mobileBottomSheet(context);
                      }
                    });
                  },
                  child: const Text(
                    "Use mobile insetead",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Color.fromRGBO(29, 98, 202, 1)),
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
            ],
          ),
        );
      },
    );
  }

  void mobileBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      isDismissible: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        ),
      ),
      builder: (context) {
        return Padding(
          padding: EdgeInsets.only(
              left: 20.0,
              right: 20,
              top: 20,
              bottom: MediaQuery.of(context).viewInsets.bottom),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  const Text(
                    "Forgot your password?",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    width: 110,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Text(
                      "Done",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Color.fromRGBO(29, 98, 202, 1)),
                    ),
                  ),
                ],
              ),
              const SizedBox(
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
                height: 40,
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
                        builder: (context) => createaccount(),
                      ));
                },
                child: const Text(
                  "Send reset link",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 100),
                child: GestureDetector(
                  onTap: () {
                    _usemobile = false;
                    setState(() {
                      if (_usemobile == false) {
                        emailBottomSheet(context);
                      }
                    });
                  },
                  child: const Text(
                    "Use email insetead",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Color.fromRGBO(29, 98, 202, 1)),
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
            ],
          ),
        );
      },
    );
  }

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
                child: Row(
                  children: [
                    Icon(
                      Icons.arrow_back_ios_new_rounded,
                      size: 20,
                      color: Color.fromRGBO(29, 98, 202, 1),
                    ),
                    Text(
                      "Back",
                      style: TextStyle(
                          fontSize: 14,
                          color: Color.fromRGBO(29, 98, 202, 1),
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      width: 80,
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
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 4),
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
                        "Enter your password",
                        style: TextStyle(
                            fontSize: 21, fontWeight: FontWeight.w600),
                      ),
                    ),
                    const Text(
                      "Password",
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
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
                                    ? Icons.visibility_off
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
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 210),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            emailBottomSheet(context);
                          });
                        },
                        child: const Text(
                          "Forgot password?",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Color.fromRGBO(29, 98, 202, 1)),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 150,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4)),
                          fixedSize: const Size(328, 45),
                          backgroundColor:
                              const Color.fromRGBO(87, 50, 191, 1)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => homescreen(),
                            ));
                      },
                      child: const Text(
                        "Login",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ])));
  }
}
