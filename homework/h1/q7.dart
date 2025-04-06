void main(){
  /*
 Question 7
Given this code, identify any errors and explain why they occur:
void main() {
String name = "Alice";
name = 123;
print(name); 
}
   */
  // We have a compile-time Error by assigning an integer value to a variable has a String data type
  // so cause Dart enforces type safety, it give this error as once the variable is assigned to a specific data type, it can't be changed to another one.
}