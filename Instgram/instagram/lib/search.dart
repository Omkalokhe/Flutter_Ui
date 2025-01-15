import 'package:flutter/material.dart';
import 'package:instagram/profile.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  int currentpage = 0;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: (AppBar(
        backgroundColor: Colors.black,
        title: const TextField(
          style: TextStyle(
            color: Colors.white,
          ),
          decoration: InputDecoration(
              contentPadding: EdgeInsets.all(8),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              prefixIcon: Icon(Icons.search),
              prefixIconColor: Colors.white,
              hintText: "Search...",
              hintStyle: TextStyle(color: Colors.white)),
        ),
      )),
      backgroundColor: Colors.black,
      bottomNavigationBar: BottomAppBar(
          color: Colors.black,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //const Spacer(),
              IconButton(
                onPressed: () {
                  Navigator.of(context).pop(); // to pop the search screen
                  setState(() {
                    currentpage = 0;
                  });
                },
                icon: currentpage == 0
                    ? const Icon(
                        Icons.home,
                        color: Colors.white,
                        size: 25,
                      )
                    : const Icon(Icons.home_outlined,
                        color: Colors.white, size: 25),
              ),
              const Spacer(),
              IconButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => const Search()),
                    );
                    setState(() {
                      currentpage = 1;
                    });
                  },
                  icon: currentpage == 1
                      ? const Icon(
                          Icons.search,
                          color: Colors.white,
                          size: 25,
                        )
                      : const Icon(Icons.search_sharp,
                          color: Colors.white, size: 25)),
              const Spacer(),
              IconButton(
                  onPressed: () {
                    setState(() {
                      currentpage = 2;
                    });
                  },
                  icon: currentpage == 2
                      ? const Icon(Icons.add_box_rounded,
                          color: Colors.white, size: 25)
                      : const Icon(Icons.add_box_rounded,
                          color: Colors.white, size: 25)),
              const Spacer(),
              IconButton(
                  onPressed: () {
                    setState(() {
                      currentpage = 3;
                    });
                  },
                  icon: currentpage == 3
                      ? const Icon(Icons.ondemand_video_outlined,
                          color: Colors.white, size: 25)
                      : const Icon(Icons.ondemand_video,
                          color: Colors.white, size: 25)),
              const Spacer(),
              IconButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => const profile()),
                    );
                    setState(() {
                      currentpage = 4;
                    });
                  },
                  icon: currentpage == 4
                      ? const Icon(Icons.person_sharp,
                          color: Colors.white, size: 25)
                      : const Icon(Icons.person_2_outlined,
                          color: Colors.white, size: 25)),
            ],
          )),
    );
  }
}
