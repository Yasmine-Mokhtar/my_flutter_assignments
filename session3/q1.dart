import 'dart:io';

void main() {
  /*
1. Basic Calculator:
Create a Dart program that takes two numbers as input and performs addition,
subtraction, multiplication, and division using variables, arithmetic operators, and functions.
Also, include optional parameters for different operations (e.g., addition of multiple numbers).
   */

  MyCalculator x = MyCalculator(number1: 100, operator: "+", number2: 10);
  print(x.calculate());

  MyCalculator y = MyCalculator(number1: 2000, operator: "*", number2: 20, number3: 10);
  print(y.calculate());
}


class MyCalculator {
  double number1;
  double number2;
  double? number3;
  String operator;

  MyCalculator({required this.number1, required this.operator, required this.number2, this.number3});

  double? calculate(){
    switch (operator) {
      case "+":
        return number1 + number2 +(number3 ?? 0);
      case "-":
        return number1 - number2 -(number3 ?? 0);
      case "*":
        return number1 * number2 *(number3 ?? 1);
      case "/":
        if(number2 == 0|| (number3 != null && number3 == 0)){
          print("Invalid division by Zero");
        } else {
          return number1 / number2 /(number3 ?? 1);
        }
      case "%":
        return (number3 == null) ?  number1 % number2 : number1 % number2 ;
      default:
        print("Invalid operation");
        return null;
    }
  }
}
