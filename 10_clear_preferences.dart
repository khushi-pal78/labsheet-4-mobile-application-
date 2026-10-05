// LAB SHEET 6 - QUESTION 10
// Create a Flutter application to remove stored SharedPreferences data using a Clear button.

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() => runApp(MaterialApp(home: ClearPage()));

class ClearPage extends StatefulWidget {
  @override
  State<ClearPage> createState() => _ClearPageState();
}

class _ClearPageState extends State<ClearPage> {
  String message = 'Stored data is available';

  Future<void> clearData() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.clear();

    setState(() {
      message = 'All stored data cleared';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Clear Data')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(message),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: clearData,
              child: Text('Clear Data'),
            ),
          ],
        ),
      ),
    );
  }
}
