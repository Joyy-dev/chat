import 'package:flutter/material.dart';

class ChatScreens extends StatelessWidget {
  const ChatScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) => Container(
          padding: EdgeInsets.all(10),
          child: Text('What\'s up'),
        )
      ),
    );
  }
}