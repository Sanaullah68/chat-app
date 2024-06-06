import 'package:chat_app/chat_room.dart';
import 'package:chat_app/chat_screen2.dart';
import 'package:chat_app/first_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'widgets/build_container.dart';
import 'widgets/list_tile.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  final PageController _controller = PageController(viewportFraction: 0.3);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff292f3f),
      appBar: AppBar(
        backgroundColor: const Color(0xff292f3f),
        title: const Text(
          "Martina Wolna",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        leading: const Padding(
          padding: EdgeInsets.only(left: 5.0),
          child: CircleAvatar(
            backgroundColor: Colors.black87,
          ),
        ),
        actions: [
          FloatingActionButton(
            onPressed: () {
              Get.to(const HomePage());
            },
            backgroundColor: Colors.transparent,
            child: const Icon(Icons.arrow_back),
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 18, top: 18, bottom: 18, right: 5),
                  child: SizedBox(
                    height: 50,
                    width: 275,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search...',
                        hintStyle: const TextStyle(color: Color(0xffa5a7ac)),
                        filled: true,
                        fillColor: const Color(0xff1f232f),
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        suffixIcon: FloatingActionButton(
                          onPressed: () {},
                          backgroundColor: const Color(0xff565e70),
                          child: const Icon(
                            Icons.search,
                            color: Colors.white,
                            size: 25,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                width: 50,
                height: 50,
                margin: const EdgeInsets.only(right: 12),
                child: FloatingActionButton(
                  onPressed: () {
                    Get.to(const ChatRoomTwo());
                  },
                  backgroundColor: const Color(0xff03a9f1),
                  child: const Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(left: 15.0),
            child: Text(
              "Favourites",
              style: TextStyle(color: Colors.white, fontSize: 22),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 150,
            child: PageView(
              padEnds: false,
              controller: _controller,
              children: const [
                BuildContainer(
                  startColor: Colors.red,
                  endColor: Colors.blue,
                  text: "Sanaullah",
                  imagePath: "assets/pic1.jpg",
                ),
                BuildContainer(
                  startColor: Colors.red,
                  endColor: Colors.blue,
                  text: "Sanaullah",
                  imagePath: "assets/pic2.jpg",
                ),
                BuildContainer(
                  startColor: Colors.blue,
                  endColor: Colors.blue,
                  text: "Sanaullah",
                  imagePath: "assets/pic3.jpg",
                ),
                BuildContainer(
                  startColor: Colors.red,
                  endColor: Colors.yellow,
                  text: "Sanaullah",
                  imagePath: "assets/pic2.jpg",
                ),
                BuildContainer(
                  startColor: Colors.red,
                  endColor: Colors.yellow,
                  text: "Sanaullah",
                  imagePath: "assets/pic2.jpg",
                ),
                BuildContainer(
                  startColor: Colors.red,
                  endColor: Colors.yellow,
                  text: "Sanaullah",
                  imagePath: "assets/pic2.jpg",
                ),
                BuildContainer(
                  startColor: Colors.red,
                  endColor: Colors.yellow,
                  text: "Sanaullah",
                  imagePath: "assets/pic2.jpg",
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Center(
            child: SmoothPageIndicator(
              controller: _controller,
              count: 10,
              effect: const WormEffect(
                dotColor: Colors.grey,
                activeDotColor: Colors.white,
                dotHeight: 7,
                dotWidth: 7,
              ),
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                GestureDetector(
                  onTap: () {
                    Get.to(const ChatRoom());
                  },
                  child: buildListTile(
                      "assets/pic3.jpg", "Sanaullah", "Flutter App", "12:00",
                      notificationCount: '+5'),
                ),
                buildListTile(
                    "assets/pic2.jpg", "Sanaullah", "Flutter App", "12:00"),
                buildListTile(
                    "assets/pic3.jpg", "Sanaullah", "Flutter App", "12:00",
                    notificationCount: '+3'),
                GestureDetector(
                  onTap: () {
                    Get.to(const ChatRoom());
                  },
                  child: buildListTile(
                      "assets/pic1.jpg", "Sanaullah", "Flutter App", "12:00",
                      notificationCount: '+22'),
                ),
                buildListTile(
                    "assets/pic2.jpg", "Sanaullah", "Flutter App", "12:00"),
                buildListTile(
                    "assets/pic2.jpg", "Sanaullah", "Flutter App", "12:00"),
                buildListTile(
                    "assets/pic2.jpg", "Sanaullah", "Flutter App", "12:00"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
