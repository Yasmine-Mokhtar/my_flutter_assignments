import 'dart:io';

void main(){
  /*
Exercise 8: Conditional Statements with Input
Write a Dart program that asks the user to enter their age.
Using conditional statements (if, else if, else),
print if the user is a child (less than 13),
a teenager (13 to 19),
or an adult (20 or older).
   */
  stdout.write("Please Enter the age: ");
  int age = int.parse(stdin.readLineSync()!);

  if(age < 13 && age > 0){
    print("the user is a child (less than 13)");

  } else if(age >= 13 && age <= 19){
    print("teenager (13 to 19)");

  } else if(age >= 20){
    print("an adult (20 or older)");

  } else {
    print("Invalid Input");
  }
}