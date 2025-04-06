void main(){
  /*
Exercise 4: Iterating with a for-in Loop
Objective: Understand the for-in loop for iterating through collections.
Task: Write a program that defines a list of integers and prints each number using a for-in loop.
   */

  List<int> numbers = [100, 200, 300, 400, 500];
  for(var number in numbers){
    print(number);
  }
}