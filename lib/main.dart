import 'package:chat/screens/chat_screens.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chat App',
      theme: ThemeData(
        primaryColor: Color(0xFF03045E),
        cardColor: Color(0xFFFCA311)
      ),
      home: ChatScreens(),
    );
  }
}