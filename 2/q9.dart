import 'dart:io';

void main(){
  /*
Exercise 9: Nested If & Input
Write a Dart program that asks the user to enter a number.
First, check if the number is positive, negative, or zero.
Then, using nested if statements, print if it's even or odd (only if the number isn't zero).
   */
  stdout.write("Please Enter a number ");
  int number = int.parse(stdin.readLineSync()!);
  if(number > 0){
    print("Positive");
  } else if(number < 0){
    print("Negative");
  } else {
    print("Zero");
  }

  if(number % 2 == 0 && number != 0){
    print("Even");
  } else if (number % 2 == 1){
    print("Odd");
  }
}