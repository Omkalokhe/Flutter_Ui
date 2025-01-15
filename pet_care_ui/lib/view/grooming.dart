import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class grooming extends StatefulWidget {
  const grooming({super.key});

  @override
  State<grooming> createState() => _groomingState();
}

class _groomingState extends State<grooming> {
  List Services = [
    {'Image': "assets/bathing.png", 'name': "Bathing & Drying"},
    {'Image': "assets/hairtriming.png", 'name': "Hair Triming"},
    {'Image': "assets/nailtriming.png", 'name': "Nail Trimming"},
    {'Image': "assets/earcleaning.png", 'name': "Ear Cleaning"},
    {'Image': "assets/teeth.png", 'name': "Teeth"},
    {'Image': "assets/oiling.png", 'name': "Oiling"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: const EdgeInsets.all(25),
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        height: 26,
                        width: 26,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(245, 146, 69, 1),
                          borderRadius: BorderRadius.circular(8),
                          boxShadow: const [
                            BoxShadow(
                                offset: Offset(0, 8),
                                blurRadius: 16,
                                spreadRadius: -4,
                                color: Color.fromRGBO(22, 34, 51, 0.08))
                          ],
                        ),
                        child: Icon(
                          Icons.arrow_back_ios_new,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 90,
                    ),
                    Text(
                      "Grooming",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 99,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(245, 146, 69, 1),
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: const [
                    BoxShadow(
                        offset: Offset(0, 8),
                        blurRadius: 16,
                        spreadRadius: -4,
                        color: Color.fromRGBO(22, 34, 51, 0.08))
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "60% OFF",
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w700,
                              color: Colors.white),
                        ),
                        Text(
                          "On hair & spa treatment",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Colors.white),
                        ),
                      ],
                    ),
                    SizedBox(
                        height: 67,
                        width: 71,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset(
                            "assets/60%off.png",
                            fit: BoxFit.cover,
                          ),
                        ))
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 40,
                child: TextFormField(
                  decoration: InputDecoration(
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
                      enabled: true,
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(
                          color: Color.fromRGBO(0, 139, 148, 1),
                        ),
                      )),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 20),
                child: Row(
                  children: [
                    Text(
                      "Our Services",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                    ),
                    Spacer(),
                    Text(
                      "See All",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(194, 195, 204, 1)),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisSpacing: 15,
                      crossAxisSpacing: 15,
                      crossAxisCount: 2),
                  itemCount: Services.length,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 169,
                      width: 154,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(
                                color: Color.fromRGBO(22, 34, 51, 0.08),
                                offset: Offset(0, 8),
                                blurRadius: 16,
                                spreadRadius: -4)
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 101,
                            width: 122,
                            decoration: BoxDecoration(boxShadow: [
                              BoxShadow(
                                  color: Color.fromRGBO(22, 34, 51, 0.08),
                                  offset: Offset(0, 8),
                                  blurRadius: 16,
                                  spreadRadius: -4)
                            ], borderRadius: BorderRadius.circular(8)),
                            child: Image.asset(Services[index]["Image"]),
                          ),
                          Text(
                            Services[index]["name"],
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                    );
                  },
                ),
              )
            ])));
  }
}
