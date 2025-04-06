import 'dart:io';

void main(){
  /*
  Exercise 1: Main Function & Print Statement
Write a Dart program that asks the user to enter their name and favorite color.
Then print a sentence that includes this information.
   */

  stdout.write("Enter your name: ");
  String name = stdin.readLineSync()!;
  if(name.trim().isEmpty){
    print("Invalid input, can't be null");
    return;
  }

  stdout.write("Enter your favorite color: ");
  String favColor = stdin.readLineSync()!;
  if(favColor.trim().isEmpty){
    print("Invalid input, can't be null");
    return;
  }

  print("$name's favourite color is: $favColor");
}