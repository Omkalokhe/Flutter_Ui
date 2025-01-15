import 'package:flutter/material.dart';

class servicescreen extends StatefulWidget {
  const servicescreen({super.key});

  @override
  State<servicescreen> createState() => _servicescreenState();
}

class _servicescreenState extends State<servicescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.all(25),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const Padding(
              padding: EdgeInsets.only(top: 40),
              child: Row(
                children: [
                  Icon(
                    Icons.location_on_outlined,
                    color: Color.fromRGBO(245, 146, 69, 1),
                    size: 16,
                  ),
                  Text(
                    " London, UK",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(194, 195, 204, 1)),
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
                color: const Color.fromRGBO(245, 146, 69, 1),
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
                        "Lets Find Specialist \nDoctor for Your Pet!",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
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
                          "assets/services.png",
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
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(
                        width: 2,
                        color: Color.fromRGBO(245, 146, 69, 1),
                      ),
                    ),
                    enabled: true,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(
                        width: 2,
                        color: Color.fromRGBO(245, 146, 69, 1),
                      ),
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
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
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
            const SizedBox(
              height: 20,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    CircleAvatar(
                      radius: 27,
                      backgroundImage: AssetImage("assets/veterinary.png"),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Vaccinations",
                      style: TextStyle(
                        fontSize: 12,
                        color: Color.fromRGBO(245, 146, 69, 1),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    CircleAvatar(
                      radius: 27,
                      backgroundImage: AssetImage("assets/grooming.png"),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Operations",
                      style: TextStyle(
                        fontSize: 12,
                        color: Color.fromRGBO(245, 146, 69, 1),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    CircleAvatar(
                      radius: 27,
                      backgroundImage: AssetImage("assets/petstore.png"),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Behaviorals",
                      style: TextStyle(
                        fontSize: 12,
                        color: Color.fromRGBO(245, 146, 69, 1),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    CircleAvatar(
                      radius: 27,
                      backgroundImage: AssetImage("assets/training.png"),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Dentistry",
                      style: TextStyle(
                        fontSize: 12,
                        color: Color.fromRGBO(245, 146, 69, 1),
                      ),
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Best Specialists Nearby",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
            ),
            Expanded(
                child: ListView.builder(
                    itemCount: 7,
                    itemBuilder: (context, index) {
                      return Container(
                        height: 122,
                        margin: const EdgeInsets.only(bottom: 20),
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            boxShadow: const [
                              BoxShadow(
                                  offset: Offset(0, 8),
                                  blurRadius: 16,
                                  spreadRadius: -4,
                                  color: Color.fromRGBO(22, 34, 51, 0.08))
                            ],
                            color: Colors.white),
                        child: Row(
                          children: [
                            SizedBox(
                                height: 90,
                                width: 90,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Image.asset(
                                    "assets/bestdr.png",
                                    fit: BoxFit.fill,
                                  ),
                                )),
                            const Padding(
                              padding: EdgeInsets.only(left: 10.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Dr. Anna Johanson",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    "Veterinary Behavioral",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 10),
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.star_outline_outlined,
                                          color:
                                              Color.fromRGBO(245, 146, 69, 1),
                                          size: 16,
                                        ),
                                        Text(
                                          "4.8",
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Color.fromRGBO(
                                                  194, 195, 204, 1)),
                                        ),
                                        SizedBox(
                                          width: 8,
                                        ),
                                        Icon(
                                          Icons.location_on_outlined,
                                          color:
                                              Color.fromRGBO(245, 146, 69, 1),
                                          size: 16,
                                        ),
                                        Text(
                                          "1 km",
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Color.fromRGBO(
                                                  194, 195, 204, 1)),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    }))
          ])),
    );
  }
}
