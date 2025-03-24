import 'dart:io';

void main() {
/*
Question 18:
Task: Write a Dart program that checks if a number is within a specified range
using logical operators and prints the result.
*/
  stdout.write("Please, Enter a number: ");
  int score = int.parse(stdin.readLineSync()!);
  if (score >= 85 && score <= 100) {
    print("Your grade is Excellent 👏");
  } else if (score >= 75 && score < 85){
    print("Your grade is very good ⭐️");
  } else if (score >= 65 && score < 75){
    print("Your grade is good 🤩");
  } else if(score >= 50 && score < 65){
    print("Your grade is passed 📝");
  } else if(score < 50 && score >= 0){
    print("You're failed 🙅‍♀️");
  } else {
    print("Invalid Grade 🤔");
  }
}
