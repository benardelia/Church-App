import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'chat_board.dart';

class Groups extends StatefulWidget {
  const Groups({Key? key}) : super(key: key);

  @override
  State<Groups> createState() => _SocialState();
}

class _SocialState extends State<Groups> {
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
                          builder: (context) => ChatBody(name: 'Group Name..'))),
                  leading: CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.black12,
                  ),
                  title: Text('GroupName'),
                  subtitle: Text('last message'),
                  trailing: Text('time'),
                )));
  }
}
