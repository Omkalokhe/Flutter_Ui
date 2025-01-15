import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:music_app/view/bottomnavigation.dart';
import 'package:music_app/view/playerscreen.dart';

List songlist = [
  {"name": "Dead inside", "image_path": 'assets/dead inside.png', "year": 2020},
  {"name": "Alone", "image_path": 'assets/alone.png', "year": 2023},
  {"name": "Heartless", "image_path": 'assets/heartless.png', "year": 2023}
];

class gallery extends StatefulWidget {
  const gallery({super.key});

  @override
  State<gallery> createState() => _galleryState();
}

class _galleryState extends State<gallery> {
  List imageList = [
    {"id": 1, "image_path": 'assets/gallery.png'},
    {"id": 2, "image_path": 'assets/gallery.png'},
    {"id": 3, "image_path": 'assets/gallery.png'}
  ];
  final CarouselController carouselController = CarouselController();
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(19, 19, 19, 1),
      body: Column(
        children: [
          Stack(
            children: [
              GestureDetector(
                onTap: () {},
                //this is for moving the image
                child: CarouselSlider(
                    items: imageList
                        .map(
                          (item) => Image.asset(
                            item['image_path'],
                            fit: BoxFit.cover,
                            width: double.infinity,
                          ),
                        )
                        .toList(),
                    carouselController: carouselController,
                    options: CarouselOptions(
                      height: 367,
                      viewportFraction: 1,
                      onPageChanged: (index, reason) {
                        setState(() {
                          currentIndex = index;
                        });
                      },
                    )),
              ),
              const Positioned(
                  top: 225,
                  left: 20,
                  child: Text(
                    "A.L.O.N.E",
                    style: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  )),
              Positioned(
                top: 289,
                left: 20,
                child: Container(
                    alignment: Alignment.center,
                    height: 37,
                    width: 127,
                    decoration: BoxDecoration(
                        color: const Color.fromRGBO(255, 46, 0, 1),
                        borderRadius: BorderRadius.circular(19)),
                    child: const Text(
                      "Subscribe",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    )),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          // this for dots
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: imageList.asMap().entries.map((entry) {
                return GestureDetector(
                  onTap: () => carouselController.animateToPage(entry.key),
                  child: Container(
                    width: currentIndex == entry.key ? 21 : 7,
                    height: 7.0,
                    margin: const EdgeInsets.symmetric(
                      horizontal: 3.0,
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: currentIndex == entry.key
                            ? const Color.fromRGBO(255, 61, 0, 1)
                            : const Color.fromRGBO(159, 159, 159, 1)),
                  ),
                );
              }).toList()),
          const SizedBox(
            height: 10,
          ),
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: Text(
                  "Discography",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(255, 46, 0, 1)),
                ),
              ),
              Spacer(),
              Padding(
                padding: EdgeInsets.only(right: 15.0),
                child: Text(
                  "See all",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(248, 162, 69, 1)),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 202,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: 3,
              itemBuilder: (context, index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return player(index);
                          },
                        ));
                      },
                      child: Container(
                          height: 140,
                          width: 119,
                          margin: const EdgeInsets.only(
                              left: 15, top: 15, bottom: 8, right: 15),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: SizedBox.fromSize(
                              size: const Size.fromRadius(18),
                              child: Image.asset(
                                  "${songlist[index]["image_path"]}",
                                  fit: BoxFit.cover),
                            ),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Text(
                        "${songlist[index]["name"]}",
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Text(
                        "${songlist[index]["year"]}",
                        style: const TextStyle(
                            color: Color.fromRGBO(132, 125, 125, 1),
                            fontSize: 10,
                            fontWeight: FontWeight.w400),
                      ),
                    )
                  ],
                );
              },
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: Text(
                  "Popular singles",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                ),
              ),
              Spacer(),
              Padding(
                padding: EdgeInsets.only(right: 15.0),
                child: Text(
                  "See all",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(248, 162, 69, 1)),
                ),
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 3,
              itemBuilder: (context, index) {
                return Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 72,
                      width: 67,
                      margin: const EdgeInsets.only(
                          left: 15, right: 15, bottom: 15),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: SizedBox.fromSize(
                          size: const Size.fromRadius(18),
                          child: Image.asset("assets/we are chaos.png",
                              fit: BoxFit.cover),
                        ),
                      ),
                    ),
                    const Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "We Are Chaos",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
                          Row(
                            children: [
                              Text(
                                "2023",
                                style: TextStyle(
                                    fontSize: 10,
                                    color: Color.fromRGBO(132, 125, 125, 1)),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 5.0),
                                child: Text(
                                  " * ",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Color.fromRGBO(203, 200, 200, 1)),
                                ),
                              ),
                              Text(
                                "Easy Living",
                                style: TextStyle(
                                    fontSize: 10,
                                    color: Color.fromRGBO(132, 125, 125, 1)),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    const Spacer(),
                    const Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: Icon(
                        Icons.more_vert_rounded,
                        color: Colors.white,
                      ),
                    )
                  ],
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: mybottomNavigationBar(4),
    );
  }
}
