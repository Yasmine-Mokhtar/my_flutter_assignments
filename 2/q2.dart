import 'dart:io';

void main(){
/*
Exercise 2: Variables & Data Types (int, double)
Write a Dart program that takes two numbers from the user-one integer and one double.
Print the sum, difference, product, and division result of these numbers.
*/
int number1;
double number2;
while(true){
  stdout.write("Please, Enter an integer: ");
  String? input = stdin.readLineSync()?.trim();
  if(input != null && int.tryParse(input) != null){
     number1 = int.parse(input);
    break;
  }
  print("Invalid Input, Please Enter a valid integer");
}

while(true){
  stdout.write("Please, Enter a decimal number: ");
  String? input = stdin.readLineSync()?.trim();
  if(input != null && double.tryParse(input) != null){
    number2 = double.parse(input);
    break;
  }
  print("Invalid input, please Enter a valid decimal number");
}
print("The Sum of $number1 + $number2 = ${number1 + number2}");
print("The Difference of $number1 - $number2 = ${number1 - number2}");
print("The product of $number1 * $number2 = ${number1 * number2}");
print("The Division of $number1 / $number2 = ${(number1 / number2).toStringAsFixed(2)}");

}