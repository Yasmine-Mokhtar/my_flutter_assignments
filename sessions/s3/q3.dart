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
    String input = stdin.readLineSync()!;
    if(input.trim().isEmpty){
      print("Invalid input, the input can't be null");
      return;
    }

    try{
      number = int.parse(input);
    } catch(e){
      print("Invalid input, the input has to be a number");
      return;
    }

    if(number < 0){
      print("Bye 👋");
      return;
    }

    (number % 2 == 0) ? print("Even") : print("Odd");

  } while(number > 0);
}