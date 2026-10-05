import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: MainScreen()));

class MainScreen extends StatefulWidget {
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int index = 0;

  final screens = [
    Center(child: Text("Screen 1")),
    Center(child: Text("Screen 2")),
    Center(child: Text("Screen 3")),
  ];

  Widget build(BuildContext c) => Scaffold(
    body: screens[index],
    bottomNavigationBar: BottomNavigationBar(
      currentIndex: index,
      onTap: (i) => setState(() => index = i),
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "One"),
        BottomNavigationBarItem(icon: Icon(Icons.star), label: "Two"),
        BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Three"),
      ],
    ),
  );
}
