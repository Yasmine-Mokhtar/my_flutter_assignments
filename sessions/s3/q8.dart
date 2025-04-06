void main(){
  /*
Exercise 8: Optional Parameters
Objective: Practice using optional parameters in functions.
Task: Write a function greetUser that takes an optional name parameter.
If the name is provided, greet the user with their name; if not, greet with 'Guest'.
   */
  greetUser(name: "Jasmine");
  greetUser();

  greet (name: "Jasmine");
  greet();
}

void greetUser({String name = "Guest"}){
  print("Hello $name");
}

void greet ({String? name}){
  print("Hello ${name ?? "Guest"}");
}