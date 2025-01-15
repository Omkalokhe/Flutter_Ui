import 'package:flutter/material.dart';
import 'package:instagram/About.dart';
import 'package:instagram/chat.dart';
import 'package:instagram/profile.dart';
import 'package:instagram/search.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  bool like1 = false;
  bool like2 = false;
  bool like3 = false;
  bool like4 = false;
  bool save = false;
  int currentpage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('Instagram',
            style: TextStyle(
                fontFamily: 'SueEllenFrancisco', color: Colors.white)),
        actions: [
          const Icon(
            Icons.favorite_border_outlined,
            color: Colors.white,
          ),
          const SizedBox(
            width: 10,
          ),
        IconButton(onPressed: (){
          setState(() {
            Navigator.push(context, MaterialPageRoute(builder: (context)=> const chat()));
          });
        }, icon: const Icon(Icons.chat,color: Colors.white,))
        ],
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Column(
                    children: [
                      Container(
                        height: 82,
                        width: 82,
                        margin: const EdgeInsets.only(left: 8, bottom: 5),
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            gradient: LinearGradient(
                                colors: [
                                  Colors.orangeAccent,
                                  Colors.orange,
                                  Colors.red,
                                  Colors.purple
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                stops: [0, 0.2, 0.5, 0.8])),
                        child: Container(
                          margin: const EdgeInsets.all(3),
                          padding: const EdgeInsets.all(5),
                          height: 80,
                          width: 80,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Colors.black),
                          child: ClipOval(
                            child: SizedBox.fromSize(
                              size: const Size.fromRadius(35),
                              child: Image.asset("assets/images/myself.jpg"),
                            ),
                          ),
                        ),
                      ),
                      const Text(
                        ' Your story',
                        style: TextStyle(color: Colors.white, fontSize: (12)),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: 82,
                        width: 82,
                        margin: const EdgeInsets.only(left: 8, bottom: 5),
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            gradient: LinearGradient(
                                colors: [
                                  Colors.orangeAccent,
                                  Colors.orange,
                                  Colors.red,
                                  Colors.purple
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                stops: [0, 0.2, 0.5, 0.8])),
                        child: Container(
                            margin: const EdgeInsets.all(3),
                            padding: const EdgeInsets.all(5),
                            height: 80,
                            width: 80,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle, color: Colors.black),
                            child: ClipOval(
                              child: SizedBox.fromSize(
                                size: const Size.fromRadius(35),
                                child: Image.asset("assets/images/anju.jpg"),
                              ),
                            )),
                      ),
                      const Text(
                        'anju_k_30',
                        style: TextStyle(color: Colors.white, fontSize: (12)),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: 82,
                        width: 82,
                        margin: const EdgeInsets.only(left: 8, bottom: 5),
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            gradient: LinearGradient(
                                colors: [
                                  Colors.orangeAccent,
                                  Colors.orange,
                                  Colors.red,
                                  Colors.purple
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                stops: [0, 0.2, 0.5, 0.8])),
                        child: Container(
                            margin: const EdgeInsets.all(3),
                            padding: const EdgeInsets.all(5),
                            height: 80,
                            width: 80,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle, color: Colors.black),
                            child: ClipOval(
                              child: SizedBox.fromSize(
                                size: const Size.fromRadius(35),
                                child: Image.asset("assets/images/kalpy.jpg"),
                              ),
                            )),
                      ),
                      const Text(
                        '_kalpesh.g_45',
                        style: TextStyle(color: Colors.white, fontSize: (12)),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: 82,
                        width: 82,
                        margin: const EdgeInsets.only(left: 8, bottom: 5),
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            gradient: LinearGradient(
                                colors: [
                                  Colors.orangeAccent,
                                  Colors.orange,
                                  Colors.red,
                                  Colors.purple
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                stops: [0, 0.2, 0.5, 0.8])),
                        child: Container(
                            margin: const EdgeInsets.all(3),
                            padding: const EdgeInsets.all(5),
                            height: 80,
                            width: 80,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle, color: Colors.black),
                            child: ClipOval(
                              child: SizedBox.fromSize(
                                size: const Size.fromRadius(35),
                                child: Image.asset("assets/images/sanika.jpg"),
                              ),
                            )),
                      ),
                      const Text(
                        'sanikaman...',
                        style: TextStyle(color: Colors.white, fontSize: (12)),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: 82,
                        width: 82,
                        margin: const EdgeInsets.only(left: 8, bottom: 5),
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            gradient: LinearGradient(
                                colors: [
                                  Colors.orangeAccent,
                                  Colors.orange,
                                  Colors.red,
                                  Colors.purple
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                stops: [0, 0.2, 0.5, 0.8])),
                        child: Container(
                            margin: const EdgeInsets.all(3),
                            padding: const EdgeInsets.all(5),
                            height: 80,
                            width: 80,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle, color: Colors.black),
                            child: ClipOval(
                              child: SizedBox.fromSize(
                                size: const Size.fromRadius(35),
                                child: Image.asset("assets/images/vaibhav.jpg"),
                              ),
                            )),
                      ),
                      const Text(
                        'its_vaibha...',
                        style: TextStyle(color: Colors.white, fontSize: (12)),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: 82,
                        width: 82,
                        margin: const EdgeInsets.only(left: 8, bottom: 5),
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            gradient: LinearGradient(
                                colors: [
                                  Colors.orangeAccent,
                                  Colors.orange,
                                  Colors.red,
                                  Colors.purple
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                stops: [0, 0.2, 0.5, 0.8])),
                        child: Container(
                            margin: const EdgeInsets.all(3),
                            padding: const EdgeInsets.all(5),
                            height: 80,
                            width: 80,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle, color: Colors.black),
                            child: ClipOval(
                              child: SizedBox.fromSize(
                                size: const Size.fromRadius(35),
                                child: Image.asset("assets/images/shivam.jpg"),
                              ),
                            )),
                      ),
                      const Text(
                        '_shivam_j...',
                        style: TextStyle(color: Colors.white, fontSize: (12)),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: 82,
                        width: 82,
                        margin: const EdgeInsets.only(left: 8, bottom: 5),
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            gradient: LinearGradient(
                                colors: [
                                  Colors.orangeAccent,
                                  Colors.orange,
                                  Colors.red,
                                  Colors.purple
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                stops: [0, 0.2, 0.5, 0.8])),
                        child: Container(
                          margin: const EdgeInsets.all(3),
                          padding: const EdgeInsets.all(5),
                          height: 80,
                          width: 80,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Colors.black),
                          child: Image.network(
                              "https://upload.wikimedia.org/wikipedia/commons/thumb/2/2c/Default_pfp.svg/340px-Default_pfp.svg.png"),
                        ),
                      ),
                      const Text(
                        'siddarth...',
                        style: TextStyle(color: Colors.white, fontSize: (12)),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: 82,
                        width: 82,
                        margin: const EdgeInsets.only(left: 8, bottom: 5),
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            gradient: LinearGradient(
                                colors: [
                                  Colors.orangeAccent,
                                  Colors.orange,
                                  Colors.red,
                                  Colors.purple
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                stops: [0, 0.2, 0.5, 0.8])),
                        child: Container(
                          margin: const EdgeInsets.all(3),
                          padding: const EdgeInsets.all(5),
                          height: 80,
                          width: 80,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Colors.black),
                          child: Image.network(
                              "https://upload.wikimedia.org/wikipedia/commons/thumb/2/2c/Default_pfp.svg/340px-Default_pfp.svg.png"),
                        ),
                      ),
                      const Text(
                        'aniket_268',
                        style: TextStyle(color: Colors.white, fontSize: (12)),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                const Padding(padding: EdgeInsets.only(left: 15)),
                Column(
                  children: [
                    Container(
                      height: 35,
                      width: 35,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Colors.white),
                      child: ClipOval(
                        child: Image.asset("assets/images/anju.jpg"),
                      ),
                    ),
                  ],
                ),
                const Padding(padding: EdgeInsets.only(left: 10)),
                const Column(
                  children: [
                    Text(
                      "anju_k_30",
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      "Bhor Pune",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
                const Spacer(),
                PopupMenuButton(
                  iconColor: Colors.white,
                  color: Colors.black,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  itemBuilder: (context) {
                    return [
                       PopupMenuItem(
                        child: Row(
                          children: [
                            const Icon(
                              Icons.account_circle_outlined,
                              color: Colors.white,
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=> const about()));
                              },
                              child: const Padding(
                                padding: EdgeInsets.only(left: 8.0),
                                child: Text(
                                  "About this account",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const PopupMenuItem(
                          child: Row(
                        children: [
                          Icon(
                            Icons.remove_red_eye_rounded,
                            color: Colors.white,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 8),
                            child: Text(
                              "Hide",
                              style: TextStyle(color: Colors.white),
                            ),
                          )
                        ],
                      )),
                      const PopupMenuItem(
                          child: Row(
                        children: [
                          Icon(
                            Icons.report_gmailerrorred,
                            color: Colors.red,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 8.0),
                            child: Text(
                              "Report",
                              style: TextStyle(color: Colors.red),
                            ),
                          ),
                        ],
                      )),
                    ];
                  },
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  color: const Color.fromARGB(255, 6, 5, 5),
                  child:Image.asset("assets/images/anjupost.jpg")
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          like1 = !like1;
                        });
                      },
                      icon: like1
                          ? const Icon(
                              Icons.favorite_rounded,
                              color: Color.fromARGB(255, 240, 2, 2),
                            )
                          : const Icon(
                              Icons.favorite_outline_outlined,
                              color: Colors.white,
                            ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.comment_outlined,
                        color: Colors.white,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.send,
                        color: Colors.white,
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                        onPressed: () {
                          setState(() {
                            save = !save;
                          });
                        },
                        icon: save? const Icon(
                          Icons.bookmark,
                          color: Colors.white,
                        ):const Icon(Icons.bookmark_border,color: Colors.white,)),
                  ],
                ),
                 const Padding(
                  padding: EdgeInsets.only(left:12),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text("2211 Likes",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),textAlign: TextAlign.start,),
                        ],
                      ),
                       Row(
                        children: [
                          Text("Liked by sanikamandhre851 and 210 other",style: TextStyle(color: Colors.white),textAlign: TextAlign.start,),
                        ],
                      ),
                      Row(
                        children: [
                          Text("anju_k_30  Come out of the Shadows...Step ",style: TextStyle(color: Colors.white),textAlign: TextAlign.start,),
                        ],
                      ),
                      Row(
                        children: [
                          Text("into the Lights",style: TextStyle(color: Colors.white),textAlign: TextAlign.start,),
                        ],
                      ),
                      Row(
                        children: [
                          Text("View all 47 comments",style: TextStyle(color: Color.fromARGB(255, 83, 83, 83)),textAlign: TextAlign.start,),
                        ],
                      ),
                      Row(
                        children: [
                          Text("October 19, 2020",style: TextStyle(color: Color.fromARGB(255, 83, 83, 83)),textAlign: TextAlign.start,),
                        ],
                      ),
                    ],
                  ),
                  
                )
              ],
            ),
              Row(
              children: [
                const Padding(padding: EdgeInsets.only(left: 15)),
                Column(
                  children: [
                    Container(
                      height: 35,
                      width: 35,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Colors.white),
                      child: ClipOval(
                        child: Image.asset("assets/images/kalpy.jpg"),
                      ),
                    ),
                  ],
                ),
                const Padding(padding: EdgeInsets.only(left: 10)),
                const Column(
                  children: [
                    Text(
                      "_kalpesh.g_45",
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      "Sinnar Nashik",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
                const Spacer(),
                PopupMenuButton(
                  iconColor: Colors.white,
                  color: Colors.black,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  itemBuilder: (context) {
                    return [
                       PopupMenuItem(
                        child: Row(
                          children: [
                            const Icon(
                              Icons.account_circle_outlined,
                              color: Colors.white,
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: ((context) => const profile())));
                              },
                              child: const Padding(
                                padding: EdgeInsets.only(left: 8.0),
                                child: Text(
                                  "About this account",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const PopupMenuItem(
                          child: Row(
                        children: [
                          Icon(
                            Icons.remove_red_eye_rounded,
                            color: Colors.white,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 8),
                            child: Text(
                              "Hide",
                              style: TextStyle(color: Colors.white),
                            ),
                          )
                        ],
                      )),
                      const PopupMenuItem(
                          child: Row(
                        children: [
                          Icon(
                            Icons.report_gmailerrorred,
                            color: Colors.red,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 8.0),
                            child: Text(
                              "Report",
                              style: TextStyle(color: Colors.red),
                            ),
                          ),
                        ],
                      )),
                    ];
                  },
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
             Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  color: const Color.fromARGB(255, 6, 5, 5),
                  child: Image.asset("assets/images/kalpyPost.jpg")
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          like2 = !like2;
                        });
                      },
                      icon: like2
                          ? const Icon(
                              Icons.favorite_rounded,
                              color: Color.fromARGB(255, 240, 2, 2),
                            )
                          : const Icon(
                              Icons.favorite_outline_outlined,
                              color: Colors.white,
                            ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.comment_outlined,
                        color: Colors.white,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.send,
                        color: Colors.white,
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                        onPressed: () {
                          setState(() {
                            save = !save;
                          });
                        },
                        icon: save? const Icon(
                          Icons.bookmark,
                          color: Colors.white,
                        ):const Icon(Icons.bookmark_border,color: Colors.white,)),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(left:12),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text("1,674 Likes",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),textAlign: TextAlign.start,),
                        ],
                      ),
                      Row(
                        children: [
                          Text("Liked by its_vaibhav_kokate_vk18 and 156 other",style: TextStyle(color: Colors.white),textAlign: TextAlign.start,),
                        ],
                      ),
                      Row(
                        children: [
                          Text("View all 15 comments",style: TextStyle(color: Color.fromARGB(255, 83, 83, 83)),textAlign: TextAlign.start,),
                        ],
                      ),
                      Row(
                        children: [
                          Text("_shivam_jadhav_96k Model....",style: TextStyle(color: Colors.white),textAlign: TextAlign.start,),
                        ],
                      ),
                      Row(
                        children: [
                          Text("March 3, 2023",style: TextStyle(color: Color.fromARGB(255, 83, 83, 83)),textAlign: TextAlign.start,),
                        ],
                      ),
                    ],
                  ),
                  
                )
              ],
            ),
              Row(
              children: [
                const Padding(padding: EdgeInsets.only(left: 15)),
                Column(
                  children: [
                    Container(
                      height: 35,
                      width: 35,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Colors.white),
                      child: ClipOval(
                        child: Image.asset("assets/images/vaibhav.jpg"),
                      ),
                    ),
                  ],
                ),
                const Column(
                  children: [
                   Padding(padding: EdgeInsets.only(left: 10)),
                    Text(
                      "its_vaibhav_kokate_vk18",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                const Spacer(),
                PopupMenuButton(
                  iconColor: Colors.white,
                  color: Colors.black,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  itemBuilder: (context) {
                    return [
                      const PopupMenuItem(
                        child: Row(
                          children: [
                            Icon(
                              Icons.account_circle_outlined,
                              color: Colors.white,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 8.0),
                              child: Text(
                                "About this account",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const PopupMenuItem(
                          child: Row(
                        children: [
                          Icon(
                            Icons.remove_red_eye_rounded,
                            color: Colors.white,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 8),
                            child: Text(
                              "Hide",
                              style: TextStyle(color: Colors.white),
                            ),
                          )
                        ],
                      )),
                      const PopupMenuItem(
                          child: Row(
                        children: [
                          Icon(
                            Icons.report_gmailerrorred,
                            color: Colors.red,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 8.0),
                            child: Text(
                              "Report",
                              style: TextStyle(color: Colors.red),
                            ),
                          ),
                        ],
                      )),
                    ];
                  },
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
             Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  color: const Color.fromARGB(255, 6, 5, 5),
                  child: Image.asset("assets/images/vaibhavpost.jpg")
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          like3 = !like3;
                        });
                      },
                      icon: like3
                          ? const Icon(
                              Icons.favorite_rounded,
                              color: Color.fromARGB(255, 240, 2, 2),
                            )
                          : const Icon(
                              Icons.favorite_outline_outlined,
                              color: Colors.white,
                            ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.comment_outlined,
                        color: Colors.white,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.send,
                        color: Colors.white,
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                        onPressed: () {
                          setState(() {
                            save = !save;
                          });
                        },
                        icon: save? const Icon(
                          Icons.bookmark,
                          color: Colors.white,
                        ):const Icon(Icons.bookmark_border,color: Colors.white,)),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(left:12),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text("1,674 Likes",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),textAlign: TextAlign.start,),
                        ],
                      ),
                      Row(
                        children: [
                          Text("Liked by omkalokhe21 and 1,673 other",style: TextStyle(color: Colors.white),textAlign: TextAlign.start,),
                        ],
                      ),
                      Row(
                        children: [
                          Text("View all 50 comments",style: TextStyle(color: Color.fromARGB(255, 83, 83, 83)),textAlign: TextAlign.start,),
                        ],
                      ),
                      Row(
                        children: [
                          Text("_shivam_jadhav_96k villan....",style: TextStyle(color: Colors.white),textAlign: TextAlign.start,),
                        ],
                      ),
                      Row(
                        children: [
                          Text("Dec 3, 2023",style: TextStyle(color: Color.fromARGB(255, 83, 83, 83)),textAlign: TextAlign.start,),
                        ],
                      ),
                    ],
                  ),
                  
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  color: const Color.fromARGB(255, 6, 5, 5),
                  child: Image.network(
                    "https://images.unsplash.com/photo-1493246507139-91e8fad9978e?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8NGslMjBsYW5kc2NhcGV8ZW58MHx8MHx8fDA%3D",
                    width: double.infinity,
                  ),
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          like2 = !like2;
                        });
                      },
                      icon: like2
                          ? const Icon(
                              Icons.favorite_rounded,
                              color: Color.fromARGB(255, 240, 2, 2),
                            )
                          : const Icon(
                              Icons.favorite_outline_outlined,
                              color: Colors.white,
                            ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.comment_outlined,
                        color: Colors.white,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.send,
                        color: Colors.white,
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.bookmark_border_outlined,
                          color: Colors.white,
                        )),
                  ],
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  color: const Color.fromARGB(255, 6, 5, 5),
                  child: Image.network(
                    "https://instasize.com/_next/image?url=https%3A%2F%2Fres.cloudinary.com%2Fmunkee%2Fimage%2Fupload%2Fv1677712288%2Finstasize-website%2Flearn%2Flrm1ehuepxxgjntqr1hx.webp&w=3840&q=75",
                    width: double.infinity,
                  ),
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          like3 = !like3;
                        });
                      },
                      icon: like3
                          ? const Icon(
                              Icons.favorite_rounded,
                              color: Color.fromARGB(255, 240, 2, 2),
                            )
                          : const Icon(
                              Icons.favorite_outline_outlined,
                              color: Colors.white,
                            ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.comment_outlined,
                        color: Colors.white,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.send,
                        color: Colors.white,
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.bookmark_border_outlined,
                          color: Colors.white,
                        )),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
          color: Colors.black,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //const Spacer(),
              IconButton(
                onPressed: () {
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
                    Navigator.push(
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
                    Navigator.push(
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
