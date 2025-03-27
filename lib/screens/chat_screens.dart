import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ChatScreens extends StatelessWidget {
  const ChatScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: FirebaseFirestore.instance.collection('chat').doc('n9jz6PIkpQ8ufjjYuAUl').collection('messages').snapshots(), 
        builder: (context, streamSnapshot) {
          if (streamSnapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }
          final documents = streamSnapshot.data!.docs;
          return ListView.builder(
            itemCount: documents.length,
            itemBuilder: (context, index) => Container(
              margin: EdgeInsets.all(10),
              child: Text(documents[index]['message']),
            )
          );
        }
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          FirebaseFirestore.instance.collection('chat').doc('n9jz6PIkpQ8ufjjYuAUl').collection('messages').add({
            'text': 'Hello World'
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}