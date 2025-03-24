import 'dart:io';

void main(){
  /*
Question 11:
Task: Write a Dart program that takes two numbers as input and 
performs all arithmetic operations on them, printing the results.
   */
  print("Please, Enter the first number: ");
  int number1 = int.parse(stdin.readLineSync()!);
  String text = stdin.readLineSync()!;

  print("Please, Enter the Second number: ");
  int number2 = int.parse(stdin.readLineSync()!);

  int addition = number1 + number2;
  int subtraction = number1 - number2;
  int multiplication = number1 * number2;
  int division = number1 ~/ number2;
  int modulus = number1 % number2;

  print("The Addition for $number1 + $number2 = $addition");
  print("The Subtraction for $number1 - $number2 = $subtraction");
  print("The Multiplication for $number1 * $number2 = $multiplication");
  print("The Division for $number1 / $number2 = $division");
  print("The Modulus for $number1 % $number2 = $modulus");
}