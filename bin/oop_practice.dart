import 'dart:math';

// ------------------ 1. Student Class ------------------
class Student {
  String name;
  int roll;

  // Constructor
  Student(this.name, this.roll);

  // Method to display info
  void displayInfo() {
    print('Student Name: $name');
    print('Roll: $roll');
  }
}

// ------------------ 2. Inheritance ------------------
class Person {
  String name;

  // Constructor
  Person(this.name);
}

class Teacher extends Person {
  String subject;

  // Constructor using super
  Teacher(String name, this.subject) : super(name);

  // Method to display teacher info
  void displayTeacher() {
    print('Teacher Name: $name');
    print('Subject: $subject');
  }
}

// ------------------ 3. Abstraction ------------------
abstract class Shape {
  double _area = 0;

  // Abstract method
  void area();

  // Setter
  void setArea(double value) {
    _area = value;
  }

  // Getter
  double getArea() {
    return _area;
  }
}

class Circle extends Shape {
  double radius;

  // Constructor
  Circle(this.radius);

  // Implement abstract method
  @override
  void area() {
    double result = pi * radius * radius;
    setArea(result);
  }
}

// ------------------ MAIN FUNCTION ------------------
void main() {
  print('===== Module 4 Assignment =====\n');

  // 1. Student object
  var student = Student('Himel', 101);
  student.displayInfo();

  print('\n------------------\n');

  // 2. Teacher object (Inheritance)
  var teacher = Teacher('Mr. Rahman', 'Math');
  teacher.displayTeacher();

  print('\n------------------\n');

  // 3. Circle object (Abstraction)
  var circle = Circle(5);
  circle.area();

  print('Circle Radius: ${circle.radius}');
  print('Circle Area: ${circle.getArea().toStringAsFixed(2)}');

  print('\n------------------\n');
}
