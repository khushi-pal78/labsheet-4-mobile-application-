import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: MainScreen()));

class MainScreen extends StatefulWidget {
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int index = 0;

  final pages = [
    Center(child: Text("Home")),
    Center(child: Text("Profile")),
    Center(child: Text("Settings")),
  ];

  Widget build(BuildContext c) => Scaffold(
    body: pages[index],
    bottomNavigationBar: BottomNavigationBar(
      currentIndex: index,
      onTap: (i) => setState(() => index = i),
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings"),
      ],
    ),
  );
}
