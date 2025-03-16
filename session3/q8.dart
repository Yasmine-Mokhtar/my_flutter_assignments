import 'dart:io';

void main() {
  /*
8. Range Checker Program:
Write a Dart program that checks if a number is within a specified range
using logical operators and prints the result.
   */
  String repeat;
  do {
    stdout.write(
        "Please, Enter a number to check if it is a single Digit number or not: ");
    int x = int.parse(stdin.readLineSync()!);

    if(x >= 0 && x <= 9){
      print("$x is a single Digit number");
    } else {
      print("$x is multiple digits number");
    }

    stdout.write("Do you want to try another number: [yes, no]");
    repeat = stdin.readLineSync()!.toLowerCase();
  } while (repeat == "yes");
  print("Program terminated.");
}
