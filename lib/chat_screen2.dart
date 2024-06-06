import 'package:chat_app/chat_screen.dart';
import 'package:chat_app/chat_screen2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'widgets/custom_button.dart';

class ChatRoomTwo extends StatelessWidget {
  const ChatRoomTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff292f3f),
      appBar: AppBar(
        backgroundColor: const Color(0xff292f3f),
        title: const Text('Chatroom'),
        titleTextStyle: const TextStyle(color: Colors.white, fontSize: 20),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    flex: 1,
                    child: SizedBox(
                      height: 45,
                      child: CustomButton(
                        onPressed: () {
                          Get.to(const ChatScreen());
                        },
                        text: "New User",
                        bgColor: const Color(0xff03a9f1),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    flex: 2,
                    child: SizedBox(
                      height: 45,
                      child: CustomButton(
                        onPressed: () {},
                        text: "Delete Chatroom",
                        bgColor: const Color(0xfff18303),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: Text(
                  "Team",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 18.0),
                    child: CircleAvatar(
                      backgroundImage: AssetImage("assets/pic2.jpg"),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 18.0),
                    child: Text(
                      "Sanaullah",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: CustomButton(
                      onPressed: () {},
                      bgColor: const Color(0xff373e4e),
                      text: 'full access',
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    flex: 1,
                    child: CustomButton(
                      onPressed: () {},
                      bgColor: const Color(0xff7a8194),
                      text: 'regular access',
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  FloatingActionButton(
                    onPressed: () {},
                    backgroundColor: const Color(0xff373e4e),
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                        color: Colors.red,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Icon(
                      Icons.delete,
                      color: Colors.red,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 18.0),
                    child: CircleAvatar(
                      backgroundImage: AssetImage("assets/pic1.jpg"),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 18.0),
                    child: Text(
                      "Sanaullah",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: CustomButton(
                      onPressed: () {
                        Get.to(const ChatScreen());
                      },
                      bgColor: const Color(0xff373e4e),
                      text: 'full access',
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    flex: 1,
                    child: CustomButton(
                      onPressed: () {},
                      bgColor: const Color(0xff7a8194),
                      text: 'regular access',
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  FloatingActionButton(
                    onPressed: () {},
                    backgroundColor: const Color(0xff373e4e),
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                        color: Colors.red,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Icon(
                      Icons.delete,
                      color: Colors.red,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 18.0),
                    child: CircleAvatar(
                      backgroundImage: AssetImage("assets/pic3.jpg"),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 18.0),
                    child: Text(
                      "Sanaullah",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: CustomButton(
                      onPressed: () {},
                      bgColor: const Color(0xff373e4e),
                      text: 'full access',
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    flex: 1,
                    child: CustomButton(
                      onPressed: () {},
                      bgColor: const Color(0xff7a8194),
                      text: 'regular access',
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  FloatingActionButton(
                    onPressed: () {},
                    backgroundColor: const Color(0xff373e4e),
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                        color: Colors.red,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Icon(
                      Icons.delete,
                      color: Colors.red,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 18.0),
                    child: CircleAvatar(
                      backgroundImage: AssetImage("assets/pic1.jpg"),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 18.0),
                    child: Text(
                      "Sanaullah",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: CustomButton(
                      onPressed: () {},
                      bgColor: const Color(0xff373e4e),
                      text: 'full access',
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    flex: 1,
                    child: CustomButton(
                      onPressed: () {},
                      bgColor: const Color(0xff7a8194),
                      text: 'regular access',
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  FloatingActionButton(
                    onPressed: () {},
                    backgroundColor: const Color(0xff373e4e),
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                        color: Colors.red,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Icon(
                      Icons.delete,
                      color: Colors.red,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 18.0),
                    child: CircleAvatar(
                      backgroundImage: AssetImage("assets/pic2.jpg"),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 18.0),
                    child: Text(
                      "Sanaullah",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: CustomButton(
                      onPressed: () {},
                      bgColor: const Color(0xff373e4e),
                      text: 'full access',
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    flex: 1,
                    child: CustomButton(
                      onPressed: () {},
                      bgColor: const Color(0xff7a8194),
                      text: 'regular access',
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  FloatingActionButton(
                    onPressed: () {},
                    backgroundColor: const Color(0xff373e4e),
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                        color: Colors.red,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Icon(
                      Icons.delete,
                      color: Colors.red,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 18.0),
                    child: CircleAvatar(
                      backgroundImage: AssetImage("assets/pic1.jpg"),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 18.0),
                    child: Text(
                      "Sanaullah",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: CustomButton(
                      onPressed: () {},
                      bgColor: const Color(0xff373e4e),
                      text: 'full access',
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    flex: 1,
                    child: CustomButton(
                      onPressed: () {},
                      bgColor: const Color(0xff7a8194),
                      text: 'regular access',
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  FloatingActionButton(
                    onPressed: () {},
                    backgroundColor: const Color(0xff373e4e),
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                        color: Colors.red,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Icon(
                      Icons.delete,
                      color: Colors.red,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 18.0),
                    child: CircleAvatar(
                      backgroundImage: AssetImage("assets/pic1.jpg"),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 18.0),
                    child: Text(
                      "Sanaullah",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: CustomButton(
                      onPressed: () {},
                      bgColor: const Color(0xff373e4e),
                      text: 'full access',
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    flex: 1,
                    child: CustomButton(
                      onPressed: () {},
                      bgColor: const Color(0xff7a8194),
                      text: 'regular access',
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  FloatingActionButton(
                    onPressed: () {},
                    backgroundColor: const Color(0xff373e4e),
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                        color: Colors.red,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Icon(
                      Icons.delete,
                      color: Colors.red,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 18.0),
                    child: CircleAvatar(
                      backgroundImage: AssetImage("assets/pic1.jpg"),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 18.0),
                    child: Text(
                      "Sanaullah",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: CustomButton(
                      onPressed: () {},
                      bgColor: const Color(0xff373e4e),
                      text: 'full access',
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    flex: 1,
                    child: CustomButton(
                      onPressed: () {},
                      bgColor: const Color(0xff7a8194),
                      text: 'regular access',
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  FloatingActionButton(
                    onPressed: () {},
                    backgroundColor: const Color(0xff373e4e),
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                        color: Colors.red,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Icon(
                      Icons.delete,
                      color: Colors.red,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 18.0),
                    child: CircleAvatar(
                      backgroundImage: AssetImage("assets/pic1.jpg"),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 18.0),
                    child: Text(
                      "Sanaullah",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: CustomButton(
                      onPressed: () {},
                      bgColor: const Color(0xff373e4e),
                      text: 'full access',
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    flex: 1,
                    child: CustomButton(
                      onPressed: () {},
                      bgColor: const Color(0xff7a8194),
                      text: 'regular access',
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  FloatingActionButton(
                    onPressed: () {},
                    backgroundColor: const Color(0xff373e4e),
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                        color: Colors.red,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Icon(
                      Icons.delete,
                      color: Colors.red,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
