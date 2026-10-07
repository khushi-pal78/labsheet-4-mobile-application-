import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    List<IconData> icons = [
      Icons.home,
      Icons.person,
      Icons.settings,
      Icons.phone,
      Icons.email,
      Icons.camera_alt,
      Icons.favorite,
      Icons.star,
      Icons.search,
    ];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('Icon Grid')),
        body: GridView.count(
          crossAxisCount: 3,
          padding: const EdgeInsets.all(10),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          children: icons.map((icon) {
            return Card(
              child: Icon(icon, size: 45),
            );
          }).toList(),
        ),
      ),
    );
  }
}
