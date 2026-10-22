import 'dart:io';

class Student{
  String name;
  int idNumber;
  List<double> grades;
  
Student(this.name, this.idNumber, this.grades);

void displayInfo(){
  print('Student Name: $name');
  print('Student ID: $idNumber');
  print('\nGrades:');
  for (int i = 0; i < grades.length; i++) {
      print('Subject ${i + 1}: ${grades[i]}');
      }
    }
  }
void computeGrades(double average){
  print('\nAverage Grade: ${average.toStringAsFixed(2)}');
  
  if (average >= 75) {
    print('Status: Passed');
  } else if (average >= 70) {
    print('Status: Conditional');
  } else {
    print('Status: Failed');
  }
  print('====================================');
}

void main() {
  stdout.write("Enter your name: ");
  String name = stdin.readLineSync() ?? '';

  stdout.write("Enter student ID: ");
  int idNumber = int.parse(stdin.readLineSync() ?? '0');

  List<double> grades = [];
  for(int i = 1; i <= 3; i++){
    stdout.write('Enter grade for Subject $i:');
    double grade = double.parse(stdin.readLineSync() ?? '0.0');
    grades.add(grade);
  }
  Student student = Student(name, idNumber, grades);

  student.displayInfo();
  double sum = student.grades[0] + student.grades[1] + student.grades[2];
  double average = sum / student.grades.length;

  computeGrade(average);
    }
  
