import 'dart:io';

void main() {
/*
Exercise 1: Main Function & Print Statement
Write a Dart program that asks the user to enter their name and favorite color.
Then print a sentence that includes this information.
*/
  String name = getValidInput("Please enter your name: ");
  String favColor = getValidInput("Please enter your favorite color: ");

  print("Your name is: $name");
  print("Your favorite color is: $favColor");
}

String getValidInput(String prompt) {
  while (true) {
    stdout.write(prompt);
    String input = stdin.readLineSync()?.trim() ?? "";

    if (RegExp(r'^[a-zA-Z\s]+$').hasMatch(input)) {
      return input;
    } else {
      print("Invalid input! Please enter only letters.");
    }
  }
}

// ✅ Handles null and empty input by providing default values
// ✅ Trims whitespace to prevent blank inputs
