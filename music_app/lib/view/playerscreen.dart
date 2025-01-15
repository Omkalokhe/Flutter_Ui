import 'package:flutter/material.dart';
import 'package:music_app/view/bottomnavigation.dart';
import 'package:music_app/view/galleryscreen.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class player extends StatefulWidget {
  final int index;
  const player(this.index, {super.key});

  @override
  State<player> createState() => _playerState();
}

class _playerState extends State<player> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(19, 19, 19, 1),
      body: Column(
        children: [
          Stack(
            children: [
              Image.asset("${songlist[widget.index]["image_path"]}"),
              const Positioned(
                  top: 430,
                  left: 94,
                  child: Text(
                    "Alone in the Abyss",
                    style: TextStyle(
                        fontSize: 24, color: Color.fromRGBO(230, 154, 21, 1)),
                  )),
              const Positioned(
                  top: 460,
                  left: 170,
                  child: Text(
                    "Youlakou",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  )),
              const Positioned(
                top: 470,
                left: 335,
                child: Icon(
                  Icons.ios_share_rounded,
                  color: Color.fromRGBO(230, 154, 21, 1),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.all(15),
            child: Row(
              children: [
                Text(
                  "Dynamic Warmup | ",
                  style: TextStyle(fontSize: 14, color: Colors.white),
                ),
                Spacer(),
                Text(
                  "4 min",
                  style: TextStyle(fontSize: 15, color: Colors.white),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: LinearPercentIndicator(
              width: 350,
              alignment: MainAxisAlignment.center,
              lineHeight: 6,
              percent: 0.3,
              backgroundColor: const Color.fromRGBO(217, 217, 217, 0.19),
              barRadius: const Radius.circular(15),
              progressColor: const Color.fromRGBO(230, 154, 21, 1),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  Icons.repeat_one_rounded,
                  color: Colors.white,
                ),
                Icon(
                  Icons.skip_previous_rounded,
                  color: Colors.white,
                  size: 30,
                ),
                Icon(
                  Icons.play_circle_fill_sharp,
                  color: Colors.white,
                  size: 50,
                ),
                Icon(
                  Icons.skip_next_rounded,
                  color: Colors.white,
                  size: 30,
                ),
                Icon(
                  Icons.volume_up_rounded,
                  color: Colors.white,
                ),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: const mybottomNavigationBar(0),
    );
  }
}
