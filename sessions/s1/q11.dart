import 'dart:io';

void main() {
  /*
Question 11:
Task: Write a Dart program that takes two numbers as input and performs all arithmetic operations
on them, printing the results.
   */
  int number1 = 0;
  int number2 = 0;
  stdout.write("Please, Enter number 1: ");
  String input = stdin.readLineSync()!;

  if (input.trim().isEmpty) {
    print("Invalid input, the input can't be empty");
    return;
  }

  try {
    number1 = int.parse(input);
  } catch (e) {
    print("Invalid input, the input has to be a number");
    return;
  }

  stdout.write("Please, Enter number 2: ");
  String input2 = stdin.readLineSync()!;

  if (input2.trim().isEmpty) {
    print("Invalid input, the input can't be empty");
    return;
  }

  try {
    number2 = int.parse(input2);
  } catch (e) {
    print("Invalid input, the input has to be a number");
    return;
  }

  print("Addition: ${number1 + number2}");
  print("Subtraction: ${number1 - number2}");
  print("Multiplication: ${number1 * number2}");
  if (number2 != 0) {
    print("Division: ${number1 / number2}");
  } else {
    print("❌ Cannot divide by zero.");
  }
}
