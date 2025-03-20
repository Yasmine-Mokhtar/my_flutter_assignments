import 'dart:io';

void main() {
  /*
1. Basic Calculator:
Create a Dart program that takes two numbers as input and performs addition,
subtraction, multiplication, and division using variables, arithmetic operators, and functions.
Also, include optional parameters for different operations (e.g., addition of multiple numbers).
   */
  Calculator x = Calculator(z: 10, x: 100, operator: "+", y: 20);
  x.operation();
}

class Calculator {
  double x;
  double y;
  double? z;
  String operator;

  Calculator(
      {this.z, required this.x, required this.operator, required this.y});

  double addition() {
    return x + y + (z ?? 0);
  }

  double subtraction() {
    return x - y - (z ?? 0);
  }

  double multiplication() {
    return x * y * (z ?? 1);
  }

  double division() {
    if (y != 0) {
      return x / y / (z ?? 1);
    } else {
      print("Can't divide by Zero");
      return double.nan;
    }
  }

  void operation() {
    switch (operator) {
      case "+":
        print("The result of the addition = ${addition()}");
        break;
      case "-":
        print("The result of the subtraction = ${subtraction()}");
        break;
      case "*":
        print("The result of the multiplication = ${multiplication()}");
        break;
      case "/":
        print("The result of the division = ${division()}");
        break;
      default:
        print(
            "Invalid Operator.\n Please, Select one of this operations [+, -, *, /]");
    }
  }
}
