import 'package:chat_bot_gpt/chat_message.dart';
import 'package:flutter/material.dart';

import 'message_input.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key, required this.title});
  final String title;

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  List<ChatMessage> _messages = [];

  void _sendMessage(message) {
    ChatMessage _message = ChatMessage(text: message, sender: 'user');

    setState(() {
      _messages.insert(0, _message);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Flexible(
              child: ListView.builder(
                  reverse: true,
                  itemCount: _messages.length,
                  itemBuilder: (context, index) {
                    return _messages[index];
                  }),
            ),
            MessageInput(
              callback: (String message) => _sendMessage(message),
            ),
          ],
        ),
      ),
    );
  }
}
