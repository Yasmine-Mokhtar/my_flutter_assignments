import 'dart:io';
void main(){
  /*
Exercise 1: Print Numbers Using a For Loop
Objective: Practice basic for loop syntax.
Task: Write a program that prints numbers from 1 to 10 using a for loop.
   */
  for(int i = 1; i <= 10; i++){
    (i < 10) ? stdout.write("$i, ") : stdout.write("$i");
  }
  print("");
}