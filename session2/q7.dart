import 'dart:io';

void main() {
  /*
If-Else with Grades
Objective: Practice conditional statements with integer values.
Instructions:
- Create an integer variable marks.
- If marks is 70 or higher, print 'Passed', otherwise print 'Failed'.
   */
  int? marks;

  while (true) {
    stdout.write("Please Enter your marks here (0-100): ");
    String? input = stdin.readLineSync();
    marks = int.tryParse(input ?? "");

    if (marks != null && marks >= 0 && marks <= 100) {
      (marks >= 70) ? print("Passed 🌟🚀") : print("Failed 🌚💣");
      break;
    } else {
      print("Invalid 🙅‍♀️");
    }
  }
}
