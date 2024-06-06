import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'message_class.dart';
import 'widgets/received_message.dart';
import 'widgets/sent_message.dart';

class ChatRoom extends StatefulWidget {
  const ChatRoom({super.key});

  @override
  State<ChatRoom> createState() => _ChatRoomState();
}

class _ChatRoomState extends State<ChatRoom> {
  List<Message> messages = [
    Message(content: "Sanaullah", isSent: false, msg: "hello"),
    Message(content: "Hi, how are you?", isSent: true),
    Message(content: "Sanaullah", isSent: false, msg: "hello"),
    Message(content: "Hi, how are you?", isSent: true),
    Message(content: "Sanaullah", isSent: false, msg: "hello"),
    Message(content: "Hi, how are you?", isSent: true),
    Message(content: "Sanaullah", isSent: false, msg: "hello"),
    Message(content: "Hi, how are you?", isSent: true),
  ];
  File? _selectedImage;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0xff292f3f),
      appBar: AppBar(
        backgroundColor: const Color(0xff292f3f),
        titleTextStyle: const TextStyle(color: Colors.white, fontSize: 20),
        title: const Text('Chat Room'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0),
            child: Row(
              children: [
                SizedBox(width: 10),
                CircleAvatar(
                  backgroundImage: AssetImage("assets/pic1.jpg"),
                ),
                SizedBox(width: 5),
                CircleAvatar(
                  backgroundImage: AssetImage("assets/pic2.jpg"),
                ),
                Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Sanaullah",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    Text(
                      "Sanaullah",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ],
                ),
                SizedBox(width: 10),
              ],
            ),
          ),
          const Center(
            child: Text(
              '12:30 PM',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: messages.length,
              itemBuilder: (context, index) {
                return messages[index].isSent
                    ? SentMessageWidget(message: messages[index])
                    : ReceivedMessageWidget(message: messages[index]);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18.0, right: 18, bottom: 10),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Write a message...',
                      hintStyle: const TextStyle(color: Colors.white),
                      filled: true,
                      fillColor: const Color(0xff1f232f),
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      suffixIcon: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.message,
                          color: Colors.white,
                          size: 25,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 5),
                FloatingActionButton(
                  onPressed: () {
                    _pickImageFromGallery();
                  },
                  backgroundColor: const Color(0xff00ac83),
                  child: const Icon(
                    Icons.camera_alt_rounded,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Future _pickImageFromGallery() async {
    final returnedImage =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    setState(() {
      _selectedImage = File(returnedImage!.path);
    });
  }
}
