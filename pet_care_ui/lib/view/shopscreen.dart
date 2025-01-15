import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class shopscreen extends StatefulWidget {
  const shopscreen({super.key});

  @override
  State<shopscreen> createState() => _shopscreenState();
}

class _shopscreenState extends State<shopscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                height: 148,
                decoration: const BoxDecoration(
                    color: Color.fromRGBO(245, 146, 69, 1),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(32),
                        bottomRight: Radius.circular(32),
                        topLeft: Radius.circular(5),
                        topRight: Radius.circular(5))),
                child: const Padding(
                  padding: EdgeInsets.all(20),
                  child: Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Hello Sarah",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          ),
                          Text(
                            "Find your lovable Pets",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: Colors.white),
                          )
                        ],
                      ),
                      Spacer(),
                      Icon(
                        Icons.shopping_cart_outlined,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 125,
                left: 40,
                child: SizedBox(
                  height: 40,
                  width: 282,
                  child: TextFormField(
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
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
                      ),
                      label: const Text(
                        "search",
                        style: TextStyle(
                            fontSize: 12,
                            color: Color.fromRGBO(194, 195, 204, 1)),
                      ),
                      suffixIcon: const Icon(
                        Icons.search,
                        color: Color.fromRGBO(245, 146, 69, 1),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 25,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: 15,
                    crossAxisSpacing: 15,
                    crossAxisCount: 2),
                itemCount: 6,
                itemBuilder: (context, index) {
                  return Container(
                    height: 193,
                    width: 154,
                    padding: EdgeInsets.only(top: 5, bottom: 5),
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(245, 146, 69, 1),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(
                              color: Color.fromRGBO(22, 34, 51, 0.08),
                              offset: Offset(0, 8),
                              blurRadius: 16,
                              spreadRadius: -4)
                        ]),
                    child: Stack(children: [
                      Positioned(
                        left: 10,
                        child: ClipRRect(
                            clipBehavior: Clip.hardEdge,
                            borderRadius: BorderRadius.circular(15),
                            child: Image.asset("assets/pets.png")),
                      ),
                      Positioned(
                        top: 25,
                        child: Container(
                          height: 29,
                          width: 106,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(245, 245, 247, 1),
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(50),
                                  bottomRight: Radius.circular(50))),
                          child: Text(
                            "Pets",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(245, 146, 69, 1),
                            ),
                          ),
                        ),
                      )
                    ]),
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
