import 'package:flutter/material.dart';
import 'story_widget.dart';
import 'post_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Xeweulgram",
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.camera_alt_outlined),
            onPressed: () {},
            color: Colors.black,
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.send_outlined),
              onPressed: () {},
              color: Colors.black,
            ),
          ],
          title: Image.asset(
            'Assets/images/xeweulgram.png',
            height: 25,
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Story_widget(),
              Post_widget(),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey.shade700,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.camera_alt_outlined), label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite_border), label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_outlined), label: ""),
          ],
        ),
      ),
    );
  }
}
