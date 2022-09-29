import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Verse extends StatefulWidget {
  const Verse({Key? key}) : super(key: key);

  @override
  State<Verse> createState() => _SocialState();
}

class _SocialState extends State<Verse> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.blueAccent,
            ),
            child: Text('Mungu akasema...')));
  }
}
