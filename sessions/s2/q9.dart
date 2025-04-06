import "dart:io";
void main(){
  /*
Exercise 9: Nested If & Input
Write a Dart program that asks the user to enter a number.
First, check if the number is positive, negative, or zero.
Then, using nested if statements, print if it's even or odd (only if the number isn't zero).
   */

  int number;
  stdout.write("Enter a number: ");
  String input1 = stdin.readLineSync()!;
  if (input1.trim().isEmpty) {
    print("Invalid input, the input can't be empty value");
    return;
  }

  try {
    number = int.parse(input1);
  } catch(e){
    print("Invalid input, the input have to be a number");
    return;
  }

  if(number > 0){
    number % 2 == 0 ? print("Positive Even") : print("Positive odd");
  } else if (number < 0){
    number % 2 == 0 ? print("Negative Even") : print("Negative odd");
  } else {
    print("Zero");
  }
}