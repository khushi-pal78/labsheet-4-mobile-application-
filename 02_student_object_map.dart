// LAB SHEET 6 - QUESTION 2
// Write a Dart program to convert a Student object into a Map and a Map back into a Student object using toMap() and fromMap() methods.

class Student {
  String name;
  int rollNo;
  String course;

  Student(this.name, this.rollNo, this.course);

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'rollNo': rollNo,
      'course': course
    };
  }

  factory Student.fromMap(Map<String, dynamic> map) {
    return Student(
      map['name'] as String,
      map['rollNo'] as int,
      map['course'] as String
    );
  }
}

void main() {
  Student student = Student('Khushi', 101, 'BCA');

  Map<String, dynamic> data = student.toMap();
  print('Map: $data');

  Student newStudent = Student.fromMap(data);
  print('Name: ${newStudent.name}');
  print('Roll Number: ${newStudent.rollNo}');
  print('Course: ${newStudent.course}');
}
