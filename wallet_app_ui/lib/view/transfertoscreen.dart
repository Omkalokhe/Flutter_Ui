import 'package:flutter/material.dart';

import 'paymentfail.dart';

class transferTo extends StatefulWidget {
  final int index;
  const transferTo(
    this.index, {
    super.key,
  });

  @override
  State<transferTo> createState() => _transferToState();
}

class _transferToState extends State<transferTo> {
  final _formKey = GlobalKey<FormState>();
  final _amountController = TextEditingController();
  List contact = [
    {
      'name': "Ali Ahmed",
      'image': "assets/Profile_photo.png",
      'mobileno': "+1-300-555-0161"
    },
    {
      'name': "Steve Gates",
      'image': "assets/Profile_photo2.png",
      'mobileno': "+1-300-555-0161"
    },
    {
      'name': "Elon Jobs",
      'image': "assets/Profile_photo3.png",
      'mobileno': "+1-300-555-0161"
    },
  ];
  @override
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
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        "Transfer to",
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w400),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 70),
                        child: Row(
                          children: [
                            CircleAvatar(
                                radius: 36,
                                backgroundImage:
                                    AssetImage(contact[widget.index]['image'])),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  contact[widget.index]['name'],
                                  style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  contact[widget.index]['mobileno'],
                                  style: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromRGBO(120, 131, 141, 1)),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30,
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
                                  controller: _amountController,
                                  keyboardType: TextInputType.number,
                                  decoration: const InputDecoration(
                                    enabled: true,
                                    enabledBorder: UnderlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.black)),
                                    isDense: true,
                                    floatingLabelAlignment:
                                        FloatingLabelAlignment.center,
                                    floatingLabelStyle: TextStyle(
                                        color:
                                            Color.fromRGBO(120, 131, 141, 1)),
                                    hintText: "\$00.00",
                                    hintStyle: TextStyle(
                                        fontSize: 36,
                                        fontWeight: FontWeight.w400,
                                        color:
                                            Color.fromRGBO(120, 131, 141, 1)),
                                    labelText: 'Enter Amount',
                                  ),
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return "Please enter Amount";
                                    } else {
                                      return null;
                                    }
                                  }),
                            ),
                            const SizedBox(height: 20.0),
                          ],
                        ),
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height / 2.2),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4)),
                              backgroundColor:
                                  const Color.fromRGBO(253, 194, 40, 1)),
                          onPressed: () {
                            bool loginValidated =
                                _formKey.currentState!.validate();
                            if (loginValidated) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => paymentfail(),
                                  ));
                            }
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                "assets/secure.png",
                                color: const Color.fromRGBO(39, 6, 133, 1),
                              ),
                              const Text(
                                " Secure payment",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromRGBO(39, 6, 133, 1)),
                              )
                            ],
                          ))
                    ]))));
  }
}
