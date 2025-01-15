import 'package:flutter/material.dart';
import 'package:wallet_app_ui/view/homescreen.dart';

class otpscreen extends StatefulWidget {
  const otpscreen({super.key});

  @override
  State<otpscreen> createState() => _otpscreenState();
}

class _otpscreenState extends State<otpscreen> {
  bool _check = false;
  final _formKey = GlobalKey<FormState>();
  final _otpController = TextEditingController();

  @override

  // String? validateOtp(String value) {
  //   if (value.isEmpty) {
  //     return 'Please enter OTP';
  //   } else if (value.length != 6) {
  //     return 'Invalid OTP (must be 6 digits)';
  //   }
  //   return null;
  // }

  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 35),
                        child: Row(
                          children: [
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
                            ),
                            const SizedBox(
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
                                        margin: const EdgeInsets.symmetric(
                                            horizontal: 4),
                                        decoration: const BoxDecoration(
                                            color:
                                                Color.fromRGBO(253, 194, 40, 1),
                                            shape: BoxShape.circle),
                                      ),
                                      Container(
                                        height: 8,
                                        width: 8,
                                        decoration: const BoxDecoration(
                                            color:
                                                Color.fromRGBO(253, 194, 40, 1),
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
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        "An SMS sent to your mobile number",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w600),
                      ),
                      const Text(
                        "+962 79 XXX-XXXX",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Form(
                        key: _formKey,
                        child: Column(
                          children: [
                            SizedBox(
                              width: 197,
                              child: TextFormField(
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                  fontSize: 36,
                                ),
                                onFieldSubmitted: (value) {
                                  if (_formKey.currentState!.validate()) {
                                    setState(() {
                                      _check = true;
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => homescreen(),
                                          ));
                                    });
                                  } else {
                                    setState(() {
                                      _check = false;
                                    });
                                  }
                                },
                                controller: _otpController,
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  enabled: true,
                                  enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color: _check
                                              ? Color.fromRGBO(77, 166, 107, 1)
                                              : Colors.black)),
                                  isDense: true,
                                  suffixIcon: _check
                                      ? const Padding(
                                          padding: EdgeInsets.only(top: 20.0),
                                          child: Icon(
                                            Icons.check_circle_outline_outlined,
                                            color: Colors.green,
                                            size: 32,
                                          ),
                                        )
                                      : null,
                                  floatingLabelAlignment:
                                      FloatingLabelAlignment.center,
                                  floatingLabelStyle: const TextStyle(
                                      color: Color.fromRGBO(120, 131, 141, 1)),
                                  hintText: "XXX-XXX",
                                  hintStyle: const TextStyle(
                                      fontSize: 36,
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromRGBO(120, 131, 141, 1)),
                                  labelText: 'Enter six-digit code',
                                ),
                                validator: (value) => value?.isEmpty ?? true
                                    ? 'Please enter OTP'
                                    : (value!.length != 6
                                        ? 'Invalid OTP (must be 6 digits)'
                                        : null),
                              ),
                            ),
                            const SizedBox(height: 20.0),
                          ],
                        ),
                      ),
                    ]))));
  }
}
