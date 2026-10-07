import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> items = [
      'Apple',
      'Banana',
      'Mango',
      'Orange',
      'Grapes',
      'Pineapple',
    ];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('Horizontal List')),
        body: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: items.length,
          itemBuilder: (context, index) {
            return Container(
              width: 120,
              margin: const EdgeInsets.all(10),
              alignment: Alignment.center,
              color: Colors.blue,
              child: Text(
                items[index],
                style: const TextStyle(color: Colors.white, fontSize: 18),
              ),
            );
          },
        ),
      ),
    );
  }
}
