import 'dart:io';
void main(){
  /*
  Exercise 3: Using the do-while Loop
Objective: Practice the do-while loop and the condition evaluation.
Task: Write a program that asks the user to input a number,
then prints whether the number is odd or even.
The program should repeat the question until the user enters a negative number.
   */
 int number;
  do{
    stdout.write("Please, Enter a number: ");
    number = int.parse(stdin.readLineSync()!);
    if(number > 0){
      (number % 2 == 0) ? print("Even") : print("Odd");
    }
  } while (number > 0);

}