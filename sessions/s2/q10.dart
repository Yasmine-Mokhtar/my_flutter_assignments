import "dart:io";
void main(){
  /*
Exercise 10: Switch Case & Input
Write a Dart program that takes a number (1-12) from the user representing a month,
then uses a switch-case statement to print the name of that month.
   */

  int month;
  stdout.write("Enter a number represents a month [1- 12] : ");
  String input1 = stdin.readLineSync()!;
  if (input1.trim().isEmpty) {
    print("Invalid input, the input can't be empty value");
    return;
  }

  try {
    month = int.parse(input1);
  } catch(e){
    print("Invalid input, the input have to be a number");
    return;
  }

  switch(month){
    case 1:
      print("The month is: January");
      break;

    case 2:
      print("The month is: February");
      break;

    case 3:
      print("The month is: March");
      break;

    case 4:
      print("The month is: April");
      break;

    case 5:
      print("The month is: May");
      break;

    case 6:
      print("The month is: June");
      break;

    case 7:
      print("The month is: July");
      break;

    case 8:
      print("The month is: August");
      break;

    case 9:
      print("The month is: September");
      break;

    case 10:
      print("The month is: October");
      break;

    case 11:
      print("The month is: November");
      break;

    case 12:
      print("The month is: December");
      break;

    default:
      print("Invalid input, the number has to be between 1 to 12");
  }

}