import 'package:code/assdemo.dart';
import 'package:code/seemore.dart';
import 'package:flutter/material.dart';

class Netflix1 extends StatefulWidget {
  const Netflix1({super.key});

  @override
  State<Netflix1> createState() => _Netflix1State();
}

class _Netflix1State extends State<Netflix1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "NETFLIX",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
          textAlign: TextAlign.end,
        ),
        backgroundColor: Colors.black,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.menu,
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {
             
              },
              icon: const Icon(
                Icons.search,
                color: Colors.white,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.person_pin,
                color: Colors.white,
              ))
        ],
      ),
      body: ListView(
        children: [
          const Text(
            "MOVIES",
            textAlign: TextAlign.justify,
          ),
          const SizedBox(
            height: 8,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        height: 375,
                        child: Image.network(
                            "https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC/et00311762-lmdexnggxy-portrait.jpg"),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Container(
                        height: 375,
                        child: Image.network(
                            "https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC/et00311762-lmdexnggxy-portrait.jpg"),
                      ),
                      const SizedBox(width: 15),
                      Container(
                        height: 375,
                        child: Image.network(
                            "https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC/et00311762-lmdexnggxy-portrait.jpg"),
                      )
                    ],
                  ))
            ],
          ),
          // const SizedBox(height: 10),
          Row(
            children: [
              const Text(
                "WEB SERIES",
                textAlign: TextAlign.justify,
              ),
              const Spacer(),
              IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => assignment1()),
                    ); // it is for route to next new page
                  },
                  icon: const Icon(
                    Icons.arrow_forward_ios,
                    size: 15,
                  ))
            ],
          ),
          // const SizedBox(height: 5,),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        height: 200,
                        child: Image.network(
                          "https://assetscdn1.paytm.com/images/catalog/product/H/HO/HOMSHERLOCK-HOLHK-P63024784A1CC1B/1563111214645_0..jpg",
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Container(
                        height: 200,
                        child: Image.network(
                            "https://dnm.nflximg.net/api/v6/2DuQlx0fM4wd1nzqm5BFBi6ILa8/AAAAQeIeKt7LlqIJPKrT4aQijclj7K43xRSU3dQXNESNdNbnnJbT6LLWVRT9srUUbHbOo-iOH-8v3o16pUDMQ6tCgNGlkvfwvDOprROIZpQ2rgHtop9rHvbYlvzavMmUSGBCXjynJ80dn4nqZzZmzIUJMQpS.jpg?r=943"),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Container(
                        height: 200,
                        child: Image.network(
                            "https://www.tallengestore.com/cdn/shop/products/PeakyBlinders-NetflixTVShow-ArtPoster_125897c4-6348-41e8-b195-d203700ebcca.jpg?v=1619864555"),
                      )
                    ],
                  ))
            ],
          ),
          const SizedBox(height: 15),
          const Text(
            "MOST POPULAR",
            textAlign: TextAlign.justify,
          ),
          const SizedBox(
            height: 5,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        height: 200,
                        child: Image.network(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR0kR0gMemRl9ylPTzmmuQQVb10vo8n7kXL7BeHkeo_4lmJS56C8-WKIy_GYK12wnEmPlc",
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Container(
                        height: 200,
                        child: Image.network(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZ5Cq8kozpWIaq5Aohw4rjKkh_eE7nUkDV5zcHClQaYw&s"),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Container(
                        height: 200,
                        child: Image.network(
                            "https://dbdzm869oupei.cloudfront.net/img/posters/preview/91008.png"),
                      )
                    ],
                  ))
            ],
          )
        ],
      ),
    );
  }
}
