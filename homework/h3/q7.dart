import "dart:io";
void main(){
  /*
  7. Number Check Program:
Create a program that asks the user to input a number and checks if it's positive,
negative, or zero using if-else statements.
   */
  int number;
  stdout.write("Enter a number: ");
  String input = stdin.readLineSync()!;

  if(input.trim().isEmpty){
    print("Invalid input, the input can't be null");
    return;
  }

  try{
    number = int.parse(input);
  } catch (e){
    print("Invalid input, the input has to be numeric");
    return;
  }

  if(number > 0){
    print("$number is a positive number");
  } else if(number < 0){
    print("$number is a negative number");
  } else {
    print("Zero");
  }

}