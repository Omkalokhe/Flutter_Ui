import 'package:flutter/material.dart';

class about extends StatefulWidget {
  const about({super.key});
  @override
  State<about> createState() => aboutState();
}

class aboutState extends State<about> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          "About this account",
          style: TextStyle(color: Colors.white),
        ),
      ),
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 25, bottom: 15),
                height: 100,
                width: 100,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Colors.white),
                child: ClipOval(
                  child: Image.asset("assets/images/anju.jpg"),
                ),
              ),
            ],
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "anju_k_30",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "To help keep our community authentic,we're showing\n  information about accounts on instagram. See why\n                          this information is important.",
                style: TextStyle(color: Colors.grey, fontSize: 12),
              )
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: Column(
                  children: [
                    Icon(
                      Icons.calendar_month_outlined,
                      color: Colors.white,
                      size: 30,
                    ),
                  ],
                ),
              ),
              Padding(padding: EdgeInsets.only(left: 10)),
              Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Date joined",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "july 2020",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
          const SizedBox(
            height: 15,
          ),
           Row(
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 18),
                child: Icon(
                  Icons.person_3_outlined,
                  color: Colors.white,
                  size: 29,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Text(
                  "Former usernames",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const Spacer(),
              const Text("1",style: TextStyle(color: Colors.grey),),
              IconButton(onPressed: (){

              }, icon: const Icon(Icons.arrow_forward_ios_rounded,color: Colors.grey,size: 20,))
            ],
          )
        ],
      ),
    );
  }
}




