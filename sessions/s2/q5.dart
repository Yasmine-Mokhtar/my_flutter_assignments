import 'dart:io';
void main(){
  /*
Exercise 5: Set & Input Check
Create a Dart Set containing five numbers. Ask the user to enter a number and then print
whether this number exists in the set or not (true or false).
   */

  Set<int> numbers = {100, 200, 300, 400, 500};
  int target;
  stdout.write("Enter a number: ");
  String input = stdin.readLineSync()!;

  if(input.trim().isEmpty){
    print("Invalid input, can't be null");
    return;
  }

  try{
    target = int.parse(input);
  } catch(e){
    print("Invalid input, can't be non-numeric");
    return;
  }

  numbers.contains(target) ? print("true") : print("False");
}