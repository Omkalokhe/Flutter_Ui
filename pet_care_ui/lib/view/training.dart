import 'package:flutter/material.dart';

class training extends StatefulWidget {
  const training({super.key});

  @override
  State<training> createState() => _trainingState();
}

class _trainingState extends State<training> {
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
                      "Training",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ),
              Expanded(
                  child: ListView.builder(
                      itemCount: 7,
                      itemBuilder: (context, index) {
                        return Container(
                          height: 122,
                          margin: EdgeInsets.only(bottom: 20),
                          padding: EdgeInsets.all(8),
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
                                      "assets/event.png",
                                      fit: BoxFit.fill,
                                    ),
                                  )),
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Specialty Classes & \nWorkshops",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    const Text(
                                      "By Duke Fuzzington",
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10),
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.star_outline_outlined,
                                            color:
                                                Color.fromRGBO(245, 146, 69, 1),
                                            size: 16,
                                          ),
                                          Text(
                                            "5.0 (500)",
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: Color.fromRGBO(
                                                    194, 195, 204, 1)),
                                          )
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
            ])));
  }
}
