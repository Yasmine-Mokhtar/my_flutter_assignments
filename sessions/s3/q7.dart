void main(){
  /*
Exercise 7: Function with Parameters
Objective: Understand how to pass parameters to functions.
Task: Write a function addNumbers that takes two integers as parameters and returns their sum.
Call this function in the main() method and print the result.
   */
  print(addNumbers(x: 90, y: 10));
}

int addNumbers({required int x, required int y}){
  return x + y;
}