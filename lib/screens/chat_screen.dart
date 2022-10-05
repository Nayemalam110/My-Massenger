import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            return Center(child: Text("Hello"));
          },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            FirebaseFirestore.instance
                .collection('chats/3okFKLl8GKUe9SMHiY7i/massages')
                .snapshots()
                .listen((event) {
              print(event.docChanges[0].doc['text']);
            });
          },
          child: Icon(Icons.add),
        ));
  }
}
