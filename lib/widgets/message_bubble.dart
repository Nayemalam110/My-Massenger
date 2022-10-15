import 'dart:ui';

import 'package:flutter/material.dart';

class MessageBubble extends StatelessWidget {
  final String message;

  final bool isMe;

  MessageBubble(this.message, this.isMe);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: [
        Container(
          width: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.purple,
          ),
          padding: EdgeInsets.all(8),
          margin: EdgeInsets.all(5),
          child: Text(
            message,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ],
    );
  }
}
