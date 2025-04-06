import 'dart:io';

void main(){
  /*
  Basic Arithmetic Calculator
Write a function that takes two numbers and an operator (+, -, *, /)
as input and returns the result. Handle cases where division by zero might occur.
   */
  Calculator myCalculator = Calculator();
  myCalculator.start();
}

class Calculator {
  double number1 = 0;
  double number2 = 0;
  String operator = "";

  void start(){
    print("Welcome to Jasmine Bank 🏦");
    String repeat;
    do{
      stdout.write("Enter the first number: ");
      String input1 = stdin.readLineSync()!;
      if(input1.trim().isEmpty){
        print("Invalid input, the value can't be null");
        return;
      }
      try{
        number1 = double.parse(input1);
      } catch(e){
        print("Invalid input, the value has to be a number");
        return;
      }

      stdout.write("Enter the operator: ");
       operator = stdin.readLineSync()!;
      if(operator.trim().isEmpty){
        print("Invalid input, the value can't be null");
        return;
      }

      stdout.write("Enter the second number: ");
      String input2 = stdin.readLineSync()!;
      if(input2.trim().isEmpty){
        print("Invalid input, the value can't be null");
        return;
      }
      try{
        number2 = double.parse(input2);
      } catch(e){
        print("Invalid input, the value has to be a number");
        return;
      }

      operations();

      stdout.write("Do you want to do another operation:[yes, no]: ");
      repeat = stdin.readLineSync()!;
      if(repeat.trim().isEmpty){
        print("Invalid input, the value can't be null");
        return;
      }

    } while(repeat.toLowerCase() == "yes");
    print("Bye 👋");
  }

  double addition() => number1 + number2;
  double subtraction() => number1 - number2;
  double multiplication() => number1 * number2;
  double division(){
    if(number2 != 0){
      return number1 / number2;
    } else {
      print("Invalid input, you can't divide by zero");
      return double.nan;
    }
  }

  void operations(){
    switch(operator.trim()){
      case "+":
        print("The addition of $number1 + $number2 = ${addition().toStringAsFixed(2)}");
        break;

      case "-":
        print("The subtraction of $number1 - $number2 = ${subtraction().toStringAsFixed(2)}");
        break;

      case "*":
        print("The multiplication of $number1 * $number2 = ${multiplication().toStringAsFixed(2)}");
        break;

      case "/":
        print("The division of $number1 / $number2 = ${division().toStringAsFixed(2)}");
        break;

      default:
        print("Invalid operator: you have to choose one of these operators [+, -, *, /]");
    }
  }
}