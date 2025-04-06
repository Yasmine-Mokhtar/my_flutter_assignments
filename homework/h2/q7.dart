import "dart:io";
void main(){
  /*
If-Else with Grades
Objective: Practice conditional statements with integer values.
Instructions:
- Create an integer variable marks.
- If marks is 70 or higher, print 'Passed', otherwise print 'Failed'.
   */

  int marks;
  stdout.write("Enter your marks: ");
  String input = stdin.readLineSync()!;
  if(input.trim().isEmpty){
    print("Invalid input, the input can't be empty");
    return;
  }

  try{
    marks = int.parse(input);
  } catch(e){
    print("Invalid input, the input has to be a number");
    return;
  }

  (marks >= 70) ? print("Passed") : print("Failed");
}