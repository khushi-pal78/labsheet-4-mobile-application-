// LAB SHEET 6 - QUESTION 1
// Write a Dart program to store student details (name, roll number, and course) in a Map and display all key-value pairs.

import 'dart:core';

void main() {
  Map<String, dynamic> student = {
    'Name': 'Khushi',
    'Roll Number': 101,
    'Course': 'BCA'
  };

  student.forEach((key, value) {
    print('$key : $value');
  });
}
