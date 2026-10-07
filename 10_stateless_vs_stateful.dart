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
        appBar: AppBar(title: const Text('Stateless vs Stateful')),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            StatelessExample(),
            SizedBox(height: 30),
            StatefulExample(),
          ],
        ),
      ),
    );
  }
}

class StatelessExample extends StatelessWidget {
  const StatelessExample({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'StatelessWidget: This text does not change.',
      style: TextStyle(fontSize: 18),
      textAlign: TextAlign.center,
    );
  }
}

class StatefulExample extends StatefulWidget {
  const StatefulExample({super.key});

  @override
  State<StatefulExample> createState() => _StatefulExampleState();
}

class _StatefulExampleState extends State<StatefulExample> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'StatefulWidget Count: $count',
          style: const TextStyle(fontSize: 18),
        ),
        const SizedBox(height: 10),
        ElevatedButton(
          onPressed: () {
            setState(() {
              count++;
            });
          },
          child: const Text('Increase'),
        ),
      ],
    );
  }
}
