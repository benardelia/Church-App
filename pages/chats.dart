import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'chat_board.dart';

class Chats extends StatefulWidget {
  const Chats({Key? key}) : super(key: key);

  @override
  State<Chats> createState() => _SocialState();
}

class _SocialState extends State<Chats> {
  
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
        child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) => ListTile(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              ChatBody(name: 'Friend Name..'))),
                  leading: CircleAvatar(
                    radius: 20,
                  ),
                  title: Text('name'),
                  subtitle: Text('last message'),
                  trailing: Text(
                      'time'),
                )));
  }
}
