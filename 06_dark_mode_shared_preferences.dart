// LAB SHEET 6 - QUESTION 6
// Create a Flutter application to save a Dark Mode ON/OFF setting using a Switch and SharedPreferences.

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() => runApp(ThemeApp());

class ThemeApp extends StatefulWidget {
  @override
  State<ThemeApp> createState() => _ThemeAppState();
}

class _ThemeAppState extends State<ThemeApp> {
  bool darkMode = false;

  @override
  void initState() {
    super.initState();
    loadMode();
  }

  Future<void> loadMode() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      darkMode = prefs.getBool('darkMode') ?? false;
    });
  }

  Future<void> changeMode(bool value) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('darkMode', value);
    setState(() {
      darkMode = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: darkMode ? ThemeMode.dark : ThemeMode.light,
      home: Scaffold(
        appBar: AppBar(title: Text('Dark Mode')),
        body: SwitchListTile(
          title: Text('Dark Mode'),
          value: darkMode,
          onChanged: changeMode,
        ),
      ),
    );
  }
}
