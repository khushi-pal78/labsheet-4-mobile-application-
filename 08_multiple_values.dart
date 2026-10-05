// LAB SHEET 6 - QUESTION 8
// Create a Flutter application to save and display multiple values (name, email, and age) using SharedPreferences.

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() => runApp(MaterialApp(home: DetailsPage()));

class DetailsPage extends StatefulWidget {
  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  String name = '';
  String email = '';
  int age = 0;

  @override
  void initState() {
    super.initState();
    loadData();
  }

  Future<void> loadData() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      name = prefs.getString('name') ?? '';
      email = prefs.getString('email') ?? '';
      age = prefs.getInt('age') ?? 0;
    });
  }

  Future<void> saveData() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('name', 'Khushi');
    await prefs.setString('email', 'khushi@gmail.com');
    await prefs.setInt('age', 21);
    loadData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Student Details')),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Name: $name'),
            Text('Email: $email'),
            Text('Age: $age'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: saveData,
              child: Text('Save Details'),
            ),
          ],
        ),
      ),
    );
  }
}
