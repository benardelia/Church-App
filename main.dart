import 'package:church/pages/chats.dart';
import 'package:church/pages/groups.dart';
import 'package:church/pages/lessons.dart';
import 'package:church/pages/social.dart';
import 'package:church/pages/verse.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
 final List<Widget> navigationPages = const [Chats(), Groups(), Verse(), Lessons(), Social()];
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: navigationPages[currentPage],
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          selectedItemColor: Colors.deepPurple,
          currentIndex: currentPage,
          onTap: ((value) => setState(() {
                currentPage = value;
              })),
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'chat'),
            BottomNavigationBarItem(icon: Icon(Icons.group), label: 'groups'),
            BottomNavigationBarItem(
                icon: Icon(Icons.menu_book), label: 'verse'),
            BottomNavigationBarItem(
                icon: Icon(Icons.local_library), label: 'lesson'),
            BottomNavigationBarItem(
                icon: Icon(Icons.image_search_rounded), label: 'social')
          ]),
    );
  }
}
