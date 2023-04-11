import 'package:flutter/material.dart';

class MessageInput extends StatefulWidget {
  const MessageInput({super.key, required this.callback});
  final Function(String) callback;

  @override
  State<MessageInput> createState() => _MessageInputState();
}

class _MessageInputState extends State<MessageInput> {
  final TextEditingController _controller = TextEditingController();
  String message = '';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        children: [
          Expanded(
            child: TextField(
                controller: _controller,
                decoration: const InputDecoration(hintText: 'Send a message')),
          ),
          IconButton(
            onPressed: () => widget.callback(message),
            icon: const Icon(Icons.send),
          ),
        ],
      ),
    );
  }
}
