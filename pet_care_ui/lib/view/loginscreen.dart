import 'package:flutter/material.dart';
import 'package:pet_care_ui/view/bottomnavigation.dart';

class loginscreen extends StatefulWidget {
  const loginscreen({super.key});

  @override
  State<loginscreen> createState() => _loginscreenState();
}

class _loginscreenState extends State<loginscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 50),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Center(
                child: Text(
                  "Login",
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w700,
                    color: Color.fromRGBO(245, 146, 69, 1),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Image.asset("assets/loginscreen.png"),
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Email",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(194, 195, 204, 1)),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 36,
                child: TextFormField(
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(
                          width: 2,
                          color: Color.fromRGBO(245, 146, 69, 1),
                        ),
                      ),
                      enabled: true,
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          width: 2,
                          color: Color.fromRGBO(245, 146, 69, 1),
                        ),
                        borderRadius: BorderRadius.circular(8),
                      )),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Lable",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(194, 195, 204, 1)),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 40,
                child: TextFormField(
                  obscureText: true,
                  textAlignVertical: TextAlignVertical.top,
                  obscuringCharacter: "*",
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(
                          width: 2,
                          color: Color.fromRGBO(245, 146, 69, 1),
                        ),
                      ),
                      suffixIcon: const Icon(
                        Icons.visibility_off_outlined,
                        color: Color.fromRGBO(245, 146, 69, 1),
                      ),
                      enabled: true,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(
                          width: 2,
                          color: Color.fromRGBO(245, 146, 69, 1),
                        ),
                      )),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Forgot Password ? ",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                  ),
                  Text(
                    "Click Here",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                width: 327,
                height: 35,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromRGBO(245, 146, 69, 1),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8))),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => mybottomnavigation(),
                          ));
                    },
                    child: const Text(
                      "LOGIN",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    )),
              ),
              const SizedBox(
                height: 20,
              ),
              const Divider(
                color: Color.fromRGBO(245, 146, 69, 1),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 327,
                height: 35,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromRGBO(245, 146, 69, 1),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8))),
                    onPressed: () {},
                    child: const Text(
                      "LOGIN WITH EMAIL",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    )),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 327,
                height: 35,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromRGBO(245, 146, 69, 1),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8))),
                    onPressed: () {},
                    child: const Text(
                      "LOGIN WITH FACEBOOK",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    )),
              ),
              const SizedBox(
                height: 30,
              ),
              const Center(
                  child: Text(
                '''By continue you agree to our 
                Terms & Privacy Policy''',
                style: TextStyle(fontSize: 12),
              )),
            ],
          ),
        ),
      ),
    );
  }
}
