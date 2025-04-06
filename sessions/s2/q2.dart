import 'dart:io';
void main(){
  /*
Exercise 2: Variables & Data Types (int, double)
Write a Dart program that takes two numbers from the user-one integer and one double.
Print the sum, difference, product, and division result of these numbers.
   */
  int number1;
  double number2;

  stdout.write("Enter an integer number: ");
  String input1 = stdin.readLineSync()!;

  if(input1.trim().isEmpty){
    print("Invalid input, can't be null");
    return;
  }

  try{
    number1 = int.parse(input1);
  } catch (e){
    print("Invalid input, can't be non numeric value");
    return;
  }
  //==========================================

  stdout.write("Enter a decimal number: ");
  String input2 = stdin.readLineSync()!;

  if(input2.trim().isEmpty){
    print("Invalid input, can't be null");
    return;
  }

  try{
    number2 = double.parse(input2);
  } catch (e){
    print("Invalid input, can't be non numeric value");
    return;
  }

  print("Sum of $number1 + $number2 = ${(number1 + number2).toStringAsFixed(2)}");
  print("Difference of $number1 - $number2 = ${(number1 - number2).toStringAsFixed(2)}");
  print("Product of $number1 * $number2 = ${(number1 * number2).toStringAsFixed(2)}");

  if(number2 != 0){
    print("Division of $number1 / $number2 = ${(number1 / number2).toStringAsFixed(2)}");
  } else {
    print("❌ Cannot divide by zero");
  }

}