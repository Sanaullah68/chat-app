import 'package:chat_app/chat_room.dart';
import 'package:chat_app/chat_screen.dart';
import 'package:chat_app/chat_screen2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'first_screen.dart';
import 'second_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
