import 'package:flutter/material.dart';
import 'package:instagram/search.dart';

class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  int currentpage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text(
            "omkalokhe21",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
          leading: const Icon(
            Icons.lock_outline_rounded,
            color: Colors.white,
          ),
          actions: const [
            Icon(
              Icons.expand_more_outlined,
              color: Colors.white,
            ),
            SizedBox(
              width: 45,
            ),
            Icon(
              Icons.add_box_outlined,
              color: Colors.white,
            ),
            SizedBox(
              width: 20,
            ),
            Icon(
              Icons.dehaze_outlined,
              color: Colors.white,
            )
          ],
        ),
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
                    Navigator.of(context).pop();
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
                        MaterialPageRoute(
                            builder: (context) => const profile()),
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
        body: SingleChildScrollView(
          child: Column(children: [
            Row(
              children: [
                Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 22, top: 15),
                      height: 90,
                      width: 90,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: ClipOval(
                        child: SizedBox.fromSize(
                          size: const Size.fromRadius(45),
                          child: Image.asset("assets/images/myself.jpg"),
                        ),
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                const Column(
                  children: [
                    Text(
                      "0",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    Text(
                      "Posts",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    )
                  ],
                ),
                const Spacer(),
                const Column(
                  children: [
                    Text(
                      "21M",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    Text(
                      "Followers",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    )
                  ],
                ),
                const Spacer(),
                const Column(
                  children: [
                    Text(
                      "168",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    Text(
                      "Following",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    )
                  ],
                ),
                const Spacer(),
              ],
            ),
            const Row(
              children: [
                Padding(padding: EdgeInsets.only(left: 25, top: 30)),
                Text(
                  "Om Kalokhe",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w500),
                )
              ],
            ),
            Row(
              children: [
                const Padding(padding: EdgeInsets.only(left: 30)),
                Container(
                    height: 22,
                    width: 104,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.horizontal(
                            left: Radius.circular(52),
                            right: Radius.circular(52)),
                        color: Color.fromARGB(108, 70, 68, 68)),
                    child: const Text(
                      "@omkalokhe21",
                      style: TextStyle(color: Colors.white, fontSize: 12),
                      textAlign: TextAlign.center,
                    )),
                const SizedBox(
                  width: 10,
                ),
                Container(
                    height: 22,
                    width: 110,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.horizontal(
                            left: Radius.circular(53),
                            right: Radius.circular(53)),
                        color: Color.fromARGB(108, 70, 68, 68)),
                    child: const Row(
                      children: [
                        Icon(
                          Icons.brightness_3,
                          color: Colors.white,
                          size: 18,
                        ),
                        Text(
                          " In quiet mode",
                          style: TextStyle(color: Colors.white, fontSize: 12),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ))
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              children: [
                const Padding(padding: EdgeInsets.only(left: 20)),
                Container(
                  height: 33,
                  width: 140,
                  padding: const EdgeInsets.only(top: 5),
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.horizontal(
                          left: Radius.circular(10),
                          right: Radius.circular(10)),
                      color: Color.fromARGB(108, 70, 68, 68)),
                  child: const Text(
                    "Edit Profile",
                    style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  height: 33,
                  margin: const EdgeInsets.only(left: 6),
                  width: 140,
                  padding: const EdgeInsets.only(top: 5),
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.horizontal(
                          left: Radius.circular(10),
                          right: Radius.circular(10)),
                      color: Color.fromARGB(108, 70, 68, 68)),
                  child: const Text(
                    "Share Profile",
                    style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  height: 33,
                  margin: const EdgeInsets.only(left: 6),
                  padding: const EdgeInsets.all(4),
                  width: 33,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.horizontal(
                          left: Radius.circular(10),
                          right: Radius.circular(10)),
                      color: Color.fromARGB(108, 70, 68, 68)),
                  child: const Icon(
                    Icons.person_add_outlined,
                    color: Colors.white,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              children: [
                Padding(padding: EdgeInsets.only(left: 20)),
                Text(
                  "Story highlights",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  width: 190,
                ),
                Icon(
                  Icons.expand_less,
                  color: Colors.white,
                )
              ],
            ),
            const Row(
              children: [
                Padding(padding: EdgeInsets.only(left: 20)),
                Text(
                  "Keep your favorite stories on your profile",
                  style: TextStyle(color: Colors.white, fontSize: 13),
                )
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    height: 72,
                    width: 72,
                    margin: const EdgeInsets.all(10),
                    padding: const EdgeInsets.all(0.7),
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Colors.white),
                    child: Container(
                      height: 70,
                      width: 70,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Colors.black),
                      child: const Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(15),
                    height: 74,
                    width: 74,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromARGB(108, 70, 68, 68)),
                  ),
                  Container(
                    height: 74,
                    width: 74,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromARGB(108, 70, 68, 68)),
                  ),
                  Container(
                    margin: const EdgeInsets.all(15),
                    height: 74,
                    width: 74,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromARGB(108, 70, 68, 68)),
                  )
                ],
              ),
            ),
          ]),
        ));
  }
}
