import "dart:io";

void main() {
  /*
Simple Calculator
Topic: Arithmetic operators
Exercise: Build a program that takes two numbers as input and performs addition,
subtraction, multiplication, and division. Display each result to the console.
   */
  Calculator myCalculator = Calculator();
  myCalculator.start();
}

class Calculator {
  double number1 = 0;
  double number2 = 0;
  String operation = "";

  void start() {
    String repeat;
    do {
      stdout.write("Enter the first number: ");
      String input1 = stdin.readLineSync()!;
      if (input1.trim().isEmpty) {
        print("Invalid input, the input can't be empty value");
        return;
      }

      try {
        number1 = double.parse(input1);
      } catch (e) {
        print("Invalid input, the input has to be a numeric value");
        return;
      }

      stdout.write("Enter the operator: ");
      operation = stdin.readLineSync()!;
      if (operation.trim().isEmpty) {
        print("Invalid input, the input can't be empty value");
        return;
      }

      stdout.write("Enter the second number: ");
      String input2 = stdin.readLineSync()!;
      if (input2.trim().isEmpty) {
        print("Invalid input, the input can't be empty value");
        return;
      }

      try {
        number2 = double.parse(input2);
      } catch (e) {
        print("Invalid input, the input has to be a numeric value");
        return;
      }

      operators();

      stdout.write("Do you want to do another operation [yes, no]: ");
      repeat = stdin.readLineSync()!;
      if (repeat.trim().isEmpty) {
        print("Invalid input, the input can't be empty value");
        return;
      }
    } while (repeat.toLowerCase() == "yes");
    print("Bye 👋");
  }

  double addition() => number1 + number2;
  double subtraction() => number1 - number2;
  double multiplication() => number1 * number2;

  double division() {
    if (number2 != 0) {
      return number1 / number2;
    } else {
      print("Invalid input, you can't divide by 0");
      return double.nan;
    }
  }

  void operators() {
    switch (operation.trim()) {
      case "+":
        print(addition());
        break;

      case "-":
        print(subtraction());
        break;

      case "*":
        print(multiplication());
        break;

      case "/":
        print(division().toStringAsFixed(2));
        break;

      default:
        print("Invalid operator: choose between [+, -, *, /]");
    }
  }
}
