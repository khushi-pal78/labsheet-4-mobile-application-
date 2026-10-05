// LAB SHEET 6 - QUESTION 3
// Write a Dart program to convert a Map into a JSON string and JSON string back into a Map using the dart:convert library.

import 'dart:convert';

void main() {
  Map<String, dynamic> student = {
    'name': 'Khushi',
    'rollNo': 101,
    'course': 'BCA'
  };

  String jsonData = jsonEncode(student);
  print('JSON: $jsonData');

  Map<String, dynamic> data = jsonDecode(jsonData);
  print('Map: $data');
}
