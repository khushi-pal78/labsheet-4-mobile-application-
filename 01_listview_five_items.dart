import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('Five Items')),
        body: ListView(
          children: const [
            ListTile(title: Text('Apple')),
            ListTile(title: Text('Banana')),
            ListTile(title: Text('Mango')),
            ListTile(title: Text('Orange')),
            ListTile(title: Text('Grapes')),
          ],
        ),
      ),
    );
  }
}
