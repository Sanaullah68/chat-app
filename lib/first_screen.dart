import 'package:chat_app/chat_room.dart';
import 'package:chat_app/chat_screen.dart';
import 'package:chat_app/chat_screen2.dart';
import 'package:chat_app/second_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:get/get.dart';
import 'widgets/build_container.dart';
import 'widgets/list_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController(viewportFraction: 0.3);
    final String? image;

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
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          double screenWidth = constraints.maxWidth;

          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: 50,
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Search...',
                            hintStyle:
                                const TextStyle(color: Color(0xffa5a7ac)),
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
                    const SizedBox(width: 10),
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
              ),
              const Padding(
                padding: EdgeInsets.only(left: 15.0),
                child: Text(
                  "Chatrooms",
                  style: TextStyle(color: Colors.white, fontSize: 22),
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                height: 150,
                child: PageView(
                  scrollDirection: Axis.horizontal,
                  padEnds: false,
                  controller: controller,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.to(const SecondScreen());
                      },
                      child: const BuildContainer(
                        imagePath: "",
                        startColor: Colors.black,
                        endColor: Colors.yellow,
                        text: "Sanaullah",
                      ),
                    ),
                    const BuildContainer(
                      imagePath: "",
                      startColor: Colors.red,
                      endColor: Colors.yellow,
                      text: "Sanaullah",
                    ),
                    const BuildContainer(
                      imagePath: "",
                      startColor: Colors.pink,
                      endColor: Colors.yellow,
                      text: "Sanaullah",
                    ),
                    const BuildContainer(
                      imagePath: "",
                      startColor: Colors.white,
                      endColor: Colors.yellow,
                      text: "Sanaullah",
                    ),
                    const BuildContainer(
                      imagePath: "",
                      startColor: Colors.blue,
                      endColor: Colors.yellow,
                      text: "Sanaullah",
                    )
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Center(
                child: SmoothPageIndicator(
                  controller: controller,
                  count: 5,
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
                        Get.to(const ChatScreen());
                      },
                      child: buildListTile("assets/pic2.jpg", "Sanaullah",
                          "Flutter App", "12:00"),
                    ),
                    buildListTile(
                        "assets/pic3.jpg", "Sanaullah", "Flutter App", "12:00"),
                    buildListTile(
                        "assets/pic1.jpg", "Sanaullah", "Flutter App", "12:00"),
                    buildListTile(
                        "assets/pic2.jpg", "Sanaullah", "Flutter App", "12:00"),
                    buildListTile(
                        "assets/pic3.jpg", "Sanaullah", "Flutter App", "12:00"),
                    buildListTile(
                        "assets/pic3.jpg", "Sanaullah", "Flutter App", "12:00"),
                    buildListTile(
                        "assets/pic3.jpg", "Sanaullah", "Flutter App", "12:00"),
                    buildListTile(
                        "assets/pic3.jpg", "Sanaullah", "Flutter App", "12:00"),
                    buildListTile(
                        "assets/pic3.jpg", "Sanaullah", "Flutter App", "12:00"),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
