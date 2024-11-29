import 'dart:io';

void main() {
// Student Grading System
  print("please enter your name ");
  String name = stdin.readLineSync()!;
  print("please enter degree of 3 subject ");
  double degreeOfMath = double.parse(stdin.readLineSync()!);
  double degreeOfScience = double.parse(stdin.readLineSync()!);
  double degreeOfEnglish = double.parse(stdin.readLineSync()!);
  double sumMarks = degreeOfMath + degreeOfScience + degreeOfEnglish;
  String grade = '';
  double avarage = sumMarks / 3;
  if (degreeOfMath < 100 &&
      degreeOfMath > 0 &&
      degreeOfScience < 100 &&
      degreeOfScience > 0 &&
      degreeOfEnglish < 100 &&
      degreeOfEnglish > 0) {

    if (avarage >= 90 && avarage <= 100) {
      grade = "A";
    } else if (avarage >= 80 && avarage < 89) {
      grade = "B";
    } else if (avarage >= 70 && avarage < 79) {
      grade = "c";
    } else if (avarage >= 60 && avarage < 69) {
      grade = "D";
    } else if (avarage < 60) {
      grade = "F";
    }
    print("Student Name: $name");
    print("Math Score: $degreeOfMath");
    print("Science Score: $degreeOfScience");
    print("English Score: $degreeOfEnglish");
    print("Total Score: $sumMarks");
    print("Average Score: $avarage");
    print("Grade is  $grade");
  }
  else {
    print("please enter correct degree between 1 and 100");
  }
}
