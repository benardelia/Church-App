import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Message extends StatelessWidget {
  const Message({Key? key, required this.isMe, required this.message}) : super(key: key);
  final bool isMe;
  final String message;

  @override
  Widget build(BuildContext context) {
    final radius = Radius.circular(12);
    return Row(
      mainAxisAlignment: isMe ? MainAxisAlignment.end: MainAxisAlignment.start,
      children: <Widget>[
        if (!isMe)
          CircleAvatar(
            radius: 16,
            child: Icon(Icons.person),
          ),
        Container(
          padding: const EdgeInsets.all(16),
          margin: const EdgeInsets.all(5),
          constraints: const BoxConstraints(maxWidth: 140),
          decoration: BoxDecoration(
              color: isMe ? Colors.grey : Colors.blue,
              borderRadius: isMe
                  ? BorderRadius.all(radius)
                      .subtract(BorderRadius.only(bottomLeft: radius))
                  : BorderRadius.all(radius)
                      .subtract(BorderRadius.only(bottomLeft: radius))),
          child: buildMessage(),
        )
      ],
    );
  }

  Widget buildMessage() => Column(
        crossAxisAlignment:
            isMe ? CrossAxisAlignment.start : CrossAxisAlignment.end,
        children: [Text(message, )],
      );
}
