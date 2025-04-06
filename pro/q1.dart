import 'dart:io';

void main() {
  /*
Basic Arithmetic Calculator
Write a function that takes two numbers and an operator (+, -, *, /) as input
and returns the result. Handle cases where division by zero might occur.
   */
calculate();
}

void calculate(){
  String repeat = "no";
  do{
    stdout.write("Please, Enter the first number: ");
    double x = double.parse(stdin.readLineSync()!);

    stdout.write("Please, Enter the Operator: ");
    String operation =stdin.readLineSync()!;

    stdout.write("Please, Enter the second number: ");
    double y = double.parse(stdin.readLineSync()!);
    operations(x: x, operation:  operation, y: y);

    stdout.write("Do you want to repeat the operation: [YES, NO]: ");
    repeat = stdin.readLineSync()!;
  } while (repeat.toUpperCase() == "YES");
}

double addition({required double x, required double y}) => x + y;
double subtraction({required double x, required double y}) => x - y;
double multiplication({required double x, required double y}) => x * y;
double division({required double x, required double y}) {
  if(y == 0){
    print("You can't divide by zero");
    return double.nan;
  } else {
    return x / y;
  }
}
void operations({required double x, required String operation, required double y}){
  switch(operation){
    case "+":
      print(addition(x: x, y: y));
      break;
      
    case "-":
      print(subtraction(x: x, y: y));
      break;
      
    case "*":
      print(multiplication(x: x, y: y));
      break;
      
    case "/":
      print(division(x: x, y: y));
      break;
      
    default:
      print("Invalid Operation: you you have to choose between [+, -, *, /]");
  }
} 


