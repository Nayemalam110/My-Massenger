import 'dart:ui';

import 'package:flutter/material.dart';

class MessageBubble extends StatelessWidget {
  final String message;
  MessageBubble(this.message);

  @override
  Widget build(BuildContext context) {
    return Row(
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
