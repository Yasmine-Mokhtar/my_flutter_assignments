import 'dart:io';

void main() {
  /*
Basic Arithmetic Calculator
Write a function that takes two numbers and an operator (+, -, *, /) as input
and returns the result. Handle cases where division by zero might occur.
   */
  calculator();
}

void calculator() {
  String repeat = "NO";
  do {
    stdout.write("Please, Enter the first Number: ");
    double x = double.parse(stdin.readLineSync()!);

    stdout.write("Please, Select the operation: [+, -, *, /]: ");
    String operator = stdin.readLineSync()!;

    stdout.write("Please, Enter the second Number: ");
    double y = double.parse(stdin.readLineSync()!);

    calculate(x, operator, y);

    stdout.write("Do you want to perform another operation: [yes, no]: ");
    repeat = stdin.readLineSync()!;
  } while (repeat.toUpperCase() == "YES");
  print("Program terminated");
}

void calculate(double x, String operator, double y) {
  switch (operator) {
    case "+":
      print("The Addition of $x + $y = ${addition(x, operator, y)}");
      break;

    case "-":
      print("The subtraction of $x - $y = ${subtraction(x, operator, y)}");
      break;

    case "*":
      print(
          "The multiplication of $x * $y = ${multiplication(x, operator, y)}");
      break;

    case "/":
      print("The division of $x / $y = ${division(x, operator, y)}");
      break;

    default:
      print("Invalid operators, Select the operation: [+, -, *, /]");
  }
}

double addition(double x, String operator, double y) {
  return x + y;
}

double subtraction(double x, String operator, double y) {
  return x - y;
}

double multiplication(double x, String operator, double y) {
  return x * y;
}

double division(double x, String operator, double y) {
  if (y != 0) {
    return x / y;
  } else {
    return double.infinity;
  }
}
