import 'dart:io';

void main(){
  /*
Exercise 7: Comparison Operators & Input
Write a Dart program that takes two numbers from the user.
Print true or false for each of these conditions:
- First number is greater than second number
- First number is equal to second number
- Second number is greater than or equal to first number
   */
  stdout.write("Please Enter the first number: ");
  int num1 = int.parse(stdin.readLineSync()!);

  stdout.write("Please Enter the second number: ");
  int num2 = int.parse(stdin.readLineSync()!);

  bool firstNumGreater = num1 > num2;
  bool equalNumbers = num1 == num2;
  bool secondNumGreater = num2 > num1;
  if(firstNumGreater){
    print("First number is greater than second number = $firstNumGreater");
    print("First number is equal to second number = $equalNumbers");
    print("Second number is greater than or equal to first number = $secondNumGreater");

  } else if (equalNumbers){
    print("First number is greater than second number = $firstNumGreater");
    print("First number is equal to second number = $equalNumbers");
    print("Second number is greater than or equal to first number = $secondNumGreater");

  } else if(secondNumGreater){
    print("First number is greater than second number = $firstNumGreater");
    print("First number is equal to second number = $equalNumbers");
    print("Second number is greater than or equal to first number = $secondNumGreater");
  }
}