void main(){
  /*
Exercise 2: While Loop to Calculate Sum
Objective: Understand how to use the while loop.
Task: Write a program that calculates the sum of numbers from 1 to 100 using a while loop.
   */ // for (int i = 0; i <= 100; i++)
  int sum = 0;
  int num = 1;
  while (num <= 100){
    sum += num;
    num++;
  }
  print("Sum = $sum");
}