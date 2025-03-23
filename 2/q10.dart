import 'dart:io';

void main(){
  /*
Exercise 10: Switch Case & Input
Write a Dart program that takes a number (1-12) from the user representing a month,
then uses a switch-case statement to print the name of that month.
   */
  stdout.write("Please, Enter a number from 1 to 12: ");
  int month = int.parse(stdin.readLineSync()!);

  switch(month) {
    case 1:
      print("January");
      break;
    case 2:
      print("February");
      break;
    case 3:
      print("March");
      break;
    case 4:
      print("April");
      break;
    case 5:
      print("May");
      break;
    case 6:
      print("June");
      break;
    case 7:
      print("July");
      break;
    case 8:
      print("August");
      break;
    case 9:
      print("September");
      break;
    case 10:
      print("October");
      break;
    case 11:
      print("November");
      break;
    case 12:
      print("December");
    default:
      print("Invalid");
  }
}