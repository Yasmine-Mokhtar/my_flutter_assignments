import 'dart:io';

void main() {
  /*
8. Range Checker Program:
Write a Dart program that checks if a number is within a specified range
using logical operators and prints the result.
   */
InRange x = InRange(number: 15);
x.inRange();

}

class InRange{
  int number;
  InRange({required this.number});

  void inRange(){
    String repeat = "no";
    do{
      stdout.write("Please Enter a number to check if it's in a specific range or not ");
      number = int.parse(stdin.readLineSync()!);
      if(number >= 0 && number <= 9){
        print("Single Digit");
      } else {
        print("Multiple Digits");
      }
      print("Do you wanna try another number [yes, no]");
      repeat = stdin.readLineSync()!.trim().toUpperCase();
    }
    while(repeat.toUpperCase() == "YES");
  }
}

