import 'dart:ui';

import 'package:flutter/material.dart';

class MessageBubble extends StatelessWidget {
  final String message;

  final bool isMe;
  final String userName;
  final String image_url;

  MessageBubble(this.message, this.isMe, this.image_url, this.userName);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          mainAxisAlignment:
              isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
          children: [
            Container(
              width: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.purple,
              ),
              padding: EdgeInsets.all(8),
              margin: EdgeInsets.all(5),
              child: Column(
                crossAxisAlignment:
                    isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
                children: [
                  Text(
                    userName[0].toUpperCase() + userName.substring(1),
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                    textAlign: isMe ? TextAlign.end : TextAlign.start,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    message[0].toUpperCase() + message.substring(1),
                    style: TextStyle(color: Colors.white),
                    textAlign: isMe ? TextAlign.end : TextAlign.start,
                  ),
                ],
              ),
            ),
          ],
        ),
        Positioned(
            top: -25,
            left: isMe ? null : 135,
            right: isMe ? 135 : null,
            child: CircleAvatar(
              backgroundImage: NetworkImage(image_url),
            ))
      ],
      clipBehavior: Clip.none,
    );
  }
}
