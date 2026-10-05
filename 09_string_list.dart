// LAB SHEET 6 - QUESTION 9
// Create a Flutter application to store and display a list of strings (such as favourite subjects) using SharedPreferences.

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() => runApp(MaterialApp(home: SubjectsPage()));

class SubjectsPage extends StatefulWidget {
  @override
  State<SubjectsPage> createState() => _SubjectsPageState();
}

class _SubjectsPageState extends State<SubjectsPage> {
  List<String> subjects = [];

  @override
  void initState() {
    super.initState();
    loadSubjects();
  }

  Future<void> loadSubjects() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      subjects = prefs.getStringList('subjects') ?? [];
    });
  }

  Future<void> saveSubjects() async {
    final prefs = await SharedPreferences.getInstance();
    List<String> list = [
      'Java',
      'Python',
      'Flutter',
      'Cyber Security'
    ];

    await prefs.setStringList('subjects', list);

    setState(() {
      subjects = list;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Favourite Subjects')),
      body: subjects.isEmpty
          ? Center(child: Text('No subjects saved'))
          : ListView(
              children: subjects
                  .map((subject) => ListTile(title: Text(subject)))
                  .toList(),
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: saveSubjects,
        child: Icon(Icons.save),
      ),
    );
  }
}
