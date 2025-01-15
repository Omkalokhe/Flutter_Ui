import 'package:flutter/material.dart';

class chat extends StatefulWidget {
  const chat({super.key});
  @override
  State<chat> createState() => _chatState();
}

class _chatState extends State<chat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            "omkalokhe21",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.black,
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.video_call_outlined,
                  color: Colors.white,
                )),
                IconButton(onPressed: (){}, icon: const Icon(Icons.note_alt_outlined,color: Colors.white,))
          ]),
      backgroundColor: Colors.black,
      body: 
      const Column(
        children: [
          SizedBox(height: 25,),
          Padding(
            padding: EdgeInsets.only(left:20),
            child: SizedBox(
              height: 40,
              width: 325,
              child: TextField(
                style: TextStyle(
                  color: Colors.white,
                ),
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10),
                    hintText: "Search",
                    hintStyle: TextStyle(color: Colors.white),
                    prefixIcon: Icon(Icons.search,),
                    prefixIconColor: Colors.white,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.horizontal(
                            left: Radius.circular(15), right: Radius.circular(15)))),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
