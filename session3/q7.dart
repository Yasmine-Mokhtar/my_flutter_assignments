import 'dart:io';

void main() {
  /*
  7. Number Check Program:
Create a program that asks the user to input a number
and checks if it's positive, negative, or zero using if-else statements.
   */
  String repeat;
  do {
    stdout.write("Please, Enter a number here: ");
    int x = int.parse(stdin.readLineSync()!);

    if (x > 0) {
      print("$x is a Positive number");
    } else if (x < 0) {
      print("$x is a negative number");
    } else {
      print("$x is zero");
    }

    stdout.write("Do you want to try another number: [yes, no]");
    repeat = stdin.readLineSync()!.toLowerCase();
  } while (repeat == "yes");
  print("Program terminated.");
}
