void main(){
/*
Question 17
If you need a variable that can hold any type of value and may change during execution,
which data type would you use? Write a code example to show this.

🔹I'm gonna choose dynamic data type, although its weak data type as it's not type-safe,
but it's flexible and can hold any data type at runtime.
*/
  dynamic data = "Yasmine";
  print("My Initial value is String: $data"); // Output: Yasmine

  data = 27;
  print("I've changed to an integer: $data"); // Output: 27

  data = true;
  print("I've changed to a boolean: $data"); // Output: true

  data = 3.9;
  print("I've changed to a double: $data"); // Output: 3.9
}