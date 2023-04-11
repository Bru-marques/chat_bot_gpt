import 'package:flutter/material.dart';

class ChatMessage extends StatelessWidget {
  const ChatMessage({Key? key, required this.text, required this.sender})
      : super(key: key);

  final String text;
  final String sender;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: const EdgeInsets.all(5),
          child: CircleAvatar(
            child: Text(sender[0]),
          ),
        ),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              sender,
            ),
            Container(
              margin: const EdgeInsets.all(5),
              child: Text(text),
            )
          ],
        ))
      ],
    );
  }
}
