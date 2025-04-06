import "dart:io";
void main(){
  /*
8. Range Checker Program:
Write a Dart program that checks if a number is within a specified range using
logical operators and prints the result.
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

  if(number >= 0 && number <= 9){
    print("$number is a single digit");
  } else {
    print("$number is a multiple digit");
  }
}