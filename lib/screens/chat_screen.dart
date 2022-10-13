import 'dart:convert';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:my_chat_app/widgets/messages.dart';
import 'package:my_chat_app/widgets/new_message.dart';

class ChatScreen extends StatelessWidget {
  TextEditingController _textEditingController = TextEditingController();

  addData(String text, ctx) {
    Navigator.of(ctx).pop();
    FirebaseFirestore.instance
        .collection('chats/3okFKLl8GKUe9SMHiY7i/massages')
        .add({'text': _textEditingController.text});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Flutter Chats'),
          actions: [
            DropdownButton(
                icon: Icon(Icons.more_vert),
                items: [
                  DropdownMenuItem(
                    child: Container(
                      child: Row(
                        children: [
                          Icon(Icons.exit_to_app),
                          SizedBox(
                            width: 10,
                          ),
                          Text('Logout'),
                        ],
                      ),
                    ),
                    value: 'logout',
                  ),
                ],
                onChanged: ((value) {
                  if (value == 'logout') {
                    FirebaseAuth.instance.signOut();
                  }
                }))
          ],
        ),
        body: Container(
          child: Column(
            children: [
              Expanded(child: Messages()),
              NewMessage(),
            ],
          ),
        ));
  }
}
